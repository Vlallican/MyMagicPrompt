send_email() {
  read -p "Enter the recipient's email address: " recipient
  read -p "Enter the subject of the email: " subject
  echo "Enter the body of the email (CTRL-D to finish):"
  body=$(cat)

  # Utilisation de 'mail' pour envoyer l'e-mail
  echo "$body" | mail -s "$subject" "$recipient"

  if [ $? -eq 0 ]; then
    echo "Email sent successfully to $recipient."
  else
    echo "Failed to send the email."
  fi
}