
Invoke-WebRequest -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | Invoke-Expression

# Extensions
Invoke-WebRequest https://raw.githubusercontent.com/timll/spotify-group-session/main/src/group-session.js -OutFile "$env:APPDATA/spicetify/Extensions/group-session.js"
Invoke-WebRequest https://raw.githubusercontent.com/daksh2k/Spicetify-stuff/master/Extensions/playNext.js -OutFile "$env:APPDATA/spicetify/Extensions/playNext.js"
Invoke-WebRequest https://raw.githubusercontent.com/huhridge/huh-spicetify-extensions/main/fullAppDisplayModified/fullAppDisplayMod.js -OutFile "$env:APPDATA/spicetify/Extensions/fullAppDisplayMod.js"

# Theme
$folderPath = "$env:APPDATA\spicetify\Themes\Clark"

if(!(Test-Path -Path $folderPath))
{
    New-Item -ItemType Directory -Path $folderPath
}

Invoke-WebRequest https://raw.githubusercontent.com/MathisTRD/Clark/main/Theme/color.ini -OutFile $folderPath/color.ini
Invoke-WebRequest https://raw.githubusercontent.com/MathisTRD/Clark/main/Theme/user.css -OutFile $folderPath/user.css
Invoke-WebRequest https://raw.githubusercontent.com/MathisTRD/Clark/main/Theme/user.scss -OutFile $folderPath/user.scss

spicetify config extensions group-session.js
spicetify config extensions playNext.js
spicetify config extensions fullAppDisplayMod.js

spicetify config current_theme Clark

spicetify config custom_apps new-releases
spicetify config custom_apps lyrics-plus

spicetify apply

Write-Output "Spotify is now ready!"

