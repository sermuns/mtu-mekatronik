mdbook serve --hostname 0.0.0.0 &

# Inkscape watch
WATCH_DIR="src/media/inkscape"
OUTPUT_DIR="src/media"

# Function to export files using Inkscape
export_file() {
    local FILE=$1
    # Extract the filename without the path
    FILENAME=$(basename "$FILE")
    # Construct the output file path
    OUTPUT_FILE="$OUTPUT_DIR/$FILENAME"
    
    # Run Inkscape command to export
    inkscape "$FILE" --export-text-to-path --export-area-drawing -o "$OUTPUT_FILE"

    echo "Exported $FILE to $OUTPUT_FILE."
}

# Perform initial export of all files with the specified extension
for FILE in "$WATCH_DIR"/*"$FILE_EXT"
do
    if [[ "$FILE" == *"$FILE_EXT" ]]; then
        export_file "$FILE"
    fi
done

# Start watching for changes in the directory
inotifywait -m -r -e modify,create,delete --format '%w%f' "$WATCH_DIR" | while read FILE
do
    if [[ "$FILE" == *"$FILE_EXT" ]]; then
        export_file "$FILE"
    fi
done
