# send-files-to-remote
Ce script PowerShell permet de transférer automatiquement un dossier vers plusieurs machines distantes via le partage de fichiers Windows (SMB).

### Fonctionnalités principales :

- Envoi d’un dossier local vers un chemin partagé distant (C$\Temp par défaut)
- Liste de machines à cibler configurable
- Vérification de la connectivité (ping)
- Affichage des succès/échecs

### Exemple de configuration dans le script :

```PowerShell
$computers = @("PC001", "PC002", "PC003")
$folderToTransfer = "C:\Temp\NewLap"
$destinationPath = "C$\Temp"
```

### Pré-requis :
- Accès aux partages administratifs (C$)
- Connexion réseau active avec les machines
- Les machines doivent autoriser le ping et les connexions SMB

### Utilisation :
- Modifier les variables en haut du script selon vos besoins.
- Exécuter le script avec PowerShell sur un poste ayant les droits suffisants.
- Observer les messages dans la console pour chaque transfert.

## License
This project is licensed under the MIT License.
