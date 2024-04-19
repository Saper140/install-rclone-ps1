Invoke-WebRequest https://downloads.rclone.org/rclone-current-windows-amd64.zip -OutFile C:/Windows/system32/rclone-current-windows-amd64.zip -Force
Expand-Archive -Path C:/Windows/system32/rclone-current-windows-amd64.zip -DestinationPath C:/Windows/system32/rclone-current-windows-amd64.zip
Move-Item "$(((Get-ChildItem rclone*amd64).FullName).ToString())/rclone.exe" "C:/Windows/system32"
& rclone --version
