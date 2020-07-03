rem add policy as https://www.petervanderwoude.nl/post/easily-configure-desktop-and-lock-screen-image-via-windows-10-mdm/rem Copy Files
New-Item -ItemType "directory" -Path "c:\MDMWallpaper"
copy Desktop.jpg c:\MDMWallpaper /Y
