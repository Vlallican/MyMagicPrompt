#!/bin/bash

# show_profile.sh content

load_profile() {
  # Assuming .env is in the same directory as the scripts
  if [ ! -f "$(dirname "$0")/.env" ]; then
    echo "Profile .env file not found."
    return 1
  fi

  # Load the environment variables
  export $(cat "$(dirname "$0")/.env" | xargs)
}

show_profile() {
  load_profile
  
  # Check if the previous command was successful
  if [ $? -eq 0 ]; then
    echo "Profile Information:"
    echo "First Name: $FIRST_NAME"
    echo "Last Name: $LAST_NAME"
    echo "Age: $AGE"
    echo "Email: $EMAIL"
  fi
}

# Remove or comment out the call to show_profile if you had one in show_profile.sh,
# because you'll be calling it from main.sh instead.
# show_profile
