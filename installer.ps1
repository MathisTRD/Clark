# Extensions
Invoke-WebRequest https://raw.githubusercontent.com/timll/spotify-group-session/main/src/group-session.js -OutFile "$env:APPDATA/spicetify/Extensions/group-session.js"
Invoke-WebRequest https://raw.githubusercontent.com/daksh2k/Spicetify-stuff/master/Extensions/playNext.js -OutFile "$env:APPDATA/spicetify/Extensions/playNext.js"
Invoke-WebRequest https://raw.githubusercontent.com/huhridge/huh-spicetify-extensions/main/fullAppDisplayModified/fullAppDisplayMod.js -OutFile "$env:APPDATA/spicetify/Extensions/fullAppDisplayMod.js"

spicetify config extensions group-session.js
spicetify config extensions playNext.js
spicetify config extensions fullAppDisplayMod.js



