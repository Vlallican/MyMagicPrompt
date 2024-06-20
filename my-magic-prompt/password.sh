change_password() {
  # Charger les informations d'authentification du fichier .env
  source .env

  # Demander l'ancien mot de passe pour confirmation
  read -sp "Enter current password: " currentPassword
  echo
  if [[ "$currentPassword" != "$PASSWORD" ]]; then
    echo "The entered password is incorrect."
    return 1
  fi

  # Demander le nouveau mot de passe
  read -sp "Enter new password: " newPassword
  echo
  read -sp "Confirm new password: " confirmPassword
  echo

  # Vérifier si les nouveaux mots de passe correspondent
  if [[ "$newPassword" != "$confirmPassword" ]]; then
    echo "Passwords do not match."
    return 1
  fi

  # Mettre à jour le fichier .env avec le nouveau mot de passe
  # Cette commande utilise sed pour remplacer la ligne contenant le PASSWORD
  sed -i "/^PASSWORD=/c\PASSWORD=$newPassword" .env

  echo "Password changed successfully."
}