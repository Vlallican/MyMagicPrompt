remove_file() {
  if [ -z "$1" ]; then
    echo "Error: No file specified"
  elif [ -f "$1" ]; then
    command rm -i "$1"
    echo "$1 removed successfully."
  else
    echo "Error: File not found"
  fi
}