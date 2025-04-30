#!/bin/bash

CURRENT_DIR=$(dirname "$(realpath "$0")")

echo $CURRENT_DIR

INPUT_FILE="$CURRENT_DIR/input.mp4"
OUTPUT_FILE="$CURRENT_DIR/output.mp4"

cd "$CURRENT_DIR/../Practical-RIFE"

uv venv --python 3.11

uv pip install -r requirements.txt

uv run inference_video.py --multi=2 --UHD --video=$INPUT_FILE --output=$OUTPUT_FILE

read -n 1 -s -r -p "Press any key to continue..."
