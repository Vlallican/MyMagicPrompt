change_directory() {
  if [ -z "$1" ]; then
    echo "Error: No directory specified"
    return 1
  fi

  if [ -d "$1" ]; then
    cd "$1" || return 1
    echo "Changed directory to $(pwd)"
  else
    echo "Error: Directory not found"
  fi
}