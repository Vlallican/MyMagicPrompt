open_file_in_vim() {
  read -p "Enter the filename to open in VIM: " filename
  vim "$filename"
}
