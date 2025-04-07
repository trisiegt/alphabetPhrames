# Define the target directory within the user's Documents folder
# Thanks to ChatGPT (I do not know Powershell at all..)
# This location typically does not require administrator privileges
$targetDirectory = "$env:USERPROFILE\Documents\cmdDogCheck"

# Define the base URL for the files
$baseUrl = "https://satucat.github.io/cmdDogCheck"

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
# Note: Using the 'curl' alias for Invoke-WebRequest. Ensure paths are correctly quoted.

# Download dog.cmd
Write-Host "Downloading dog.cmd..."
curl -Uri "$baseUrl/dog.cmd" -OutFile "$targetDirectory\dog.cmd" -UseBasicParsing

# Download frame01.txt
Write-Host "Downloading frame01.txt..."
curl -Uri "$baseUrl/frame01.txt" -OutFile "$targetDirectory\frame01.txt" -UseBasicParsing

# Download frame02.txt
Write-Host "Downloading frame02.txt..."
curl -Uri "$baseUrl/frame02.txt" -OutFile "$targetDirectory\frame02.txt" -UseBasicParsing

# Download mus_sigh_of_dog.mp3
Write-Host "Downloading mus_sigh_of_dog.mp3..."
curl -Uri "$baseUrl/mus_sigh_of_dog.mp3" -OutFile "$targetDirectory\mus_sigh_of_dog.mp3" -UseBasicParsing

Write-Host "Downloading sound.vbs..."
curl -Uri "$baseUrl/sound.vbs" -OutFile "$targetDirectory\sound.vbs" -UseBasicParsing

Write-Host "All downloads attempted."
Write-Host "Files should be in: $targetDirectory"

# Start the dog :D
cmd /k "$targetDirectory\dog.cmd"
