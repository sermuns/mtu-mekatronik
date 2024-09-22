#/usr/bin/env sh

mdbook serve --hostname 0.0.0.0 &

# Inkscape watch
WATCH_DIR="book/src/media/inkscape"
OUTPUT_DIR="book/src/media"

# Start watching for changes to .svg files
inotifywait -m -r -e modify,create,delete --format '%w%f' "$WATCH_DIR" | while read FILE
do
    if [[ "$FILE" == *.svg ]]; then
        # Extract the filename without the path
        FILENAME=$(basename "$FILE")
        # Construct the output file path
        OUTPUT_FILE="$OUTPUT_DIR/$FILENAME"

        # Run Inkscape command to export
        inkscape "$FILE" --export-text-to-path --export-area-drawing -o "$OUTPUT_FILE"

        echo "Exported $FILE to $OUTPUT_FILE."
    fi
done
