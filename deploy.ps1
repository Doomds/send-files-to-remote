# Liste des ordinateurs sur lesquels on veut envoyer le fichier
$computers = @("COMPUTER1", "COMPUTER2")

# Chemin local du fichier à envoyer
$folderToTransfer = "C:\Temp\NewLap"

# Chemin de destination sur les ordinateurs distants
$destinationPath = "C$\Temp"

# Boucle à travers la liste des ordinateurs
foreach ($computer in $computers) {
    # Vérifie si l'ordinateur est accessible
    if (Test-Connection -ComputerName $computer -Count 1 -Quiet) {
        # Copie le fichier vers l'ordinateur distant
        Copy-Item -Path $folderToTransfer -Destination "\\$computer\$destinationPath" -Recurse -Force
        Write-Host "Envoi vers $computer : OK" -ForegroundColor green
    } else {
        Write-Host "Envoi vers $computer : ERREUR" -ForegroundColor red
    }
}

pause
