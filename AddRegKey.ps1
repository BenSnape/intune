#PowerPoint Keys
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\16.0\PowerPoint\Addins\Toolbar" /v AutoLoad /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\16.0\PowerPoint\Addins\Toolbar" /v Path /t REG_SZ /d PowerPoint.ppam /f
#Excel Keys
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\16.0\Excel\Options" /v OPEN1 /t REG_SZ /d  '\R \"C:\Program Files\Microsoft Office\Office16\Library\Analysis\ANALYS32.XLL"\' /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\16.0\Excel\Options" /v OPEN2 /t REG_SZ /d "C:\Program Files\Microsoft Office\Office16\Library\TOOL.XLAM" /f                       
