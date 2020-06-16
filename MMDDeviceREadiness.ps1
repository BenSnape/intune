# Create a folder structure
New-Item -ItemType "directory" -Path "c:\DeviceReadinessAssessmentTool\$env:computername"
#Move the Tool files and folders
Move-Item -Path -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path Config -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"                                          
Move-Item -Path Report -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path DRATReadMe.txt -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path HtmlAgilityPack.dll -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path HtmlAgilityPack.pdb -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path log4net.dll -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path Microsoft.MMD.DeviceReadinessAssessmentTool.exe -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path Microsoft.MMD.DeviceReadinessAssessmentTool.exe.config -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path Microsoft.MMD.DeviceReadinessAssessmentTool.pdb -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path Newtonsoft.Json.dll -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
Move-Item -Path System.Management.Automation.dll -Destination "c:\DeviceReadinessAssessmentTool\$env:computername"
# Run the Tool, there is no silent switch
start-process "c:\DeviceReadinessAssessmentTool\$env:computername\Microsoft.MMD.DeviceReadinessAssessmentTool.exe"
