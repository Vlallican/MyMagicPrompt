ask_age() {
  read -p "Please enter your age: " age
  if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "Error: Age should be a number."
  elif [ "$age" -lt 0 ]; then
    echo "Error: Age cannot be negative."
  elif [ "$age" -lt 18 ]; then
    echo "You are a minor."
  else
    echo "You are an adult."
  fi
}
