import subprocess
import json
import time
import sys

MAX_RETRIES = 3

def run_compile(fqbn, address):
    retry_count = 0
    while retry_count < MAX_RETRIES:
        try:
            # Run the arduino-cli compile command
            result = subprocess.run(
                ["arduino-cli", "compile", "-u", "-b", fqbn, "-p", address],
                capture_output=True,
                text=True,
            )
            
            # Check if the output contains the avrdude error
            if "avrdude: jtagmkII_getsync(): sign-on command: status -1" in result.stdout:
                print("avrdude sync error detected.")
                
                # Kill any running avrdude processes
                print("Killing avrdude process...")
                subprocess.run(["pkill", "avrdude"])
                
                retry_count += 1
                print(f"Retrying... ({retry_count}/{MAX_RETRIES})")
                time.sleep(2)  # Optional delay before retrying
            else:
                print("Compilation succeeded!")
                break
        
        except subprocess.CalledProcessError as e:
            print(f"Compilation error: {e}")
            return False
        
    if retry_count == MAX_RETRIES:
        print("Max retries reached. Giving up.")
        return False

    return True


def detect_arduino_boards():
    try:
        # Run the `arduino-cli board list --format json` command
        result = subprocess.run(
            ["arduino-cli", "board", "list", "--format", "json"],
            capture_output=True,
            text=True,
            check=True
        )
        
        # Parse the JSON output
        json_result = json.loads(result.stdout)

        if not json_result:
            print("No boards detected.")
            return []

        detected_ports = json_result["detected_ports"]

        fqbn = ""
        address = ""
        for port in detected_ports:
            address = port["port"]["address"]
            if "ttyACM" in address:
                fqbn = "arduino:megaavr:nona4809"
            elif "ttyUSB" in address:
                fqbn = "arduino:avr:nano"

        if not fqbn or not address:
            print(f"Unknown port or FQBN.")
            exit(1)
        
        # Attempt to compile and upload, retrying if avrdude error occurs
        run_compile(fqbn, address)

    except subprocess.CalledProcessError as e:
        print(f"Error while detecting boards: {e}")
        return []

if __name__ == "__main__":
    detect_arduino_boards()
