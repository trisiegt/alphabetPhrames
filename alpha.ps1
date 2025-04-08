# Define the target directory within the user's Documents folder
$targetDirectory = "$env:USERPROFILE\Documents\cmdAlpha"

# Define the base URL for the files
$baseUrl = "https://trisiegt.github.io/cmdAlpha"

# --- Create the Directory ---
# Check if the directory exists first (optional, but good practice)
if (-not (Test-Path -Path $targetDirectory -PathType Container)) {
    Write-Host "Creating directory: $targetDirectory"
    # Create the directory. -Force creates parent directories if needed (though not needed here).
    New-Item -Path $targetDirectory -ItemType Directory -Force | Out-Null
} else {
    Write-Host "Directory already exists: $targetDirectory"
}

# --- Download Files ---
# Download alpha.cmd
Write-Host "Downloading alpha.cmd..."
curl -Uri "$baseUrl/alpha.cmd" -OutFile "$targetDirectory\alpha.cmd" -UseBasicParsing

# Loop through the files a.txt, b.txt, c.txt, ...
# Let's say you want to download files from a.txt to z.txt (you can adjust this range if needed)
for ($i = 97; $i -le 122; $i++) {
    $fileLetter = [char]$i
    $fileName = "$fileLetter.txt"
    Write-Host "Downloading $fileName..."
    curl -Uri "$baseUrl/$fileName" -OutFile "$targetDirectory\$fileName" -UseBasicParsing
}

# Download idiot.wav
Write-Host "Download idiot.wav"
curl -Uri "$baseURL/idiot.wav" -OutFile "$targetDirectory\idiot.wav" -UseBasicParsing

# Download thanks.txt
Write-Host "Download thanks.txt"
curl -Uri "$baseURL/thanks.txt" -OutFile "$targetDirectory\thanks.txt" -UseBasicParsing


Write-Host "All downloads attempted."
Write-Host "Files should be in: $targetDirectory"

# Start the performance! :D
cmd /k "$targetDirectory\alpha.cmd"
