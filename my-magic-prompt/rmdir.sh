remove_dir() {
  if [ -z "$1" ]; then
    echo "Error: No directory specified"
  elif [ -d "$1" ]; then 
    command rmdir -p "$1"
    echo "Directory '$1' removed successfully."
  else
    echo "Error: Directory not found or not empty"
  fi
}