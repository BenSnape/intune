# Create a folder structure
New-Item -ItemType "directory" -Path "c:\DeviceReadinessAssessmentTool\$env:computername"
#Move the Tool files and folders
Copy-Item -Path Config -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"                                          
Copy-Item -Path Report -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path DRATReadMe.txt -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path HtmlAgilityPack.dll -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path HtmlAgilityPack.pdb -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path log4net.dll -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path Microsoft.MMD.DeviceReadinessAssessmentTool.exe -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path Microsoft.MMD.DeviceReadinessAssessmentTool.exe.config -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path Microsoft.MMD.DeviceReadinessAssessmentTool.pdb -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path Newtonsoft.Json.dll -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Copy-Item -Path System.Management.Automation.dll -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
# Run the Tool, there is no silent switch
start-process "c:\DeviceReadinessAssessmentTool\$env:computername\Microsoft.MMD.DeviceReadinessAssessmentTool.exe"
# Copy files to Sharepoint folder
robocopy /xc /xn /xo "c:\DeviceReadinessAssessmentTool\" https://greenchillijam.sharepoint.com/:f:/s/test2/Elv6_2W2v6RPjhvJF_tAVGgBKMg1OTjDzc6ZNYk80vzy3A?e=oTa0Vq
