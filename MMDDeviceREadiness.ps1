#In progress, fails to run as system and no silent switch avaialable
# Create a folder structure
#New-Item -ItemType "directory" -Path "c:\DeviceReadinessAssessmentTool\$env:computername"
#Move the Tool files and folders
Expand-Archive -LiteralPath DeviceReadinessAssessmentTool.zip -DestinationPath "c:\DeviceReadinessAssessmentTool\$env:computername"
# Run the Tool, there is no silent switch
start-process "c:\DeviceReadinessAssessmentTool\$env:computername\Microsoft.MMD.DeviceReadinessAssessmentTool.exe" /quiet
# Copy files to Sharepoint folder
# wont work with sharepoint #robocopy /xc /xn /xo "c:\DeviceReadinessAssessmentTool\" https://greenchillijam.sharepoint.com/:f:/s/test2/Elv6_2W2v6RPjhvJF_tAVGgBKMg1OTjDzc6ZNYk80vzy3A?e=oTa0Vq
# If the folder is in Sharepoint add an item to test on the Intune app
if((Test-Path -Path https://greenchillijam.sharepoint.com/:f:/s/test2/Elv6_2W2v6RPjhvJF_tAVGgBKMg1OTjDzc6ZNYk80vzy3A?e=oTa0Vq\$env:computername )){  New-Item -ItemType "directory" -Path "c:\DeviceReadinessAssessmentTool\Complete"}
