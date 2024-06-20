download_html() {
  read -p "Enter the URL of the web page: " url
  read -p "Enter the file name to save the HTML content: " filename
  
  # Utilisation de curl pour télécharger le contenu HTML
  curl -o "$filename" "$url"
  
  if [ $? -eq 0 ]; then
    echo "HTML content saved successfully to $filename."
  else
    echo "Failed to download the HTML content."
  fi
}