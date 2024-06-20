#!/bin/bash
source quit.sh
source list.sh
source help.sh
source rm.sh
source rmdir.sh
source about.sh
source version.sh
source age.sh
source show_profile.sh
source auth.sh
source password.sh
source change_directory.sh
source pwd.sh
source current_hour.sh
source download_html.sh
source send_email.sh
source open_vim.sh

VERSION="1.0.0"

cmd() {
  cmd=$1
  shift 
  
  case "${cmd}" in
    quit | exit ) quit;;
    list ) list;;
    help ) help;;
    rm ) remove_file "$@";;
    rmdir | rmd) remove_dir "$@";;
    about ) about;;
    version | --v | vers ) show_version;;
    age ) ask_age;;
    profile ) show_profile;;
    password ) change_password;;
    cd ) change_directory "$@";;
    pwd ) pwd;;
    hour ) current_hour;;
    httpget ) download_html;;
    smtp ) send_email;;
    openVim ) open_file_in_vim "$@";;
    * ) echo "Unknown command: $cmd";; 
  esac
}
main() {
    authenticate

  lineCount=1

  while [ 1 ]; do
    date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mXzen\033[m ~ ☠️ ~ "
    read string

    cmd $string
    lineCount=$(($lineCount+1))
  done
}

main
