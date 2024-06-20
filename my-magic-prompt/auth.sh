authenticate() {
  # Charger les informations d'authentification du fichier .env
  source .env

  # Demander le nom d'utilisateur et le mot de passe
  read -p "Username: " inputUsername
  read -sp "Password: " inputPassword
  echo

  # Vérifier si les informations d'authentification sont correctes
  if [[ "$inputUsername" == "$USERNAME" && "$inputPassword" == "$PASSWORD" ]]; then
    echo "Authentication successful."
  else
    echo "Authentication failed."
    exit 1
  fi
}