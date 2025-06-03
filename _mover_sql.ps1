# Ruta de origen y destino
$origen = "C:\EduTechX\scripts"
$destino = "C:\EduTechX\backup_scripts"

# Crear carpeta destino si no existe
if (!(Test-Path -Path $destino)) {
    New-Item -ItemType Directory -Path $destino
}

# Mover archivos .sql
Get-ChildItem -Path $origen -Filter *.sql | ForEach-Object {
    Move-Item -Path $_.FullName -Destination $destino
}

Write-Host "Archivos .sql movidos correctamente."
