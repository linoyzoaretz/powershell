$compname = "Count_Formats"
$exlcudedPaths = @("C:\Users\Linoy");
$searchPaths = Get-ChildItem -Path C:\Users -Recurse | Where-Object {$exlcudedPaths -notcontains $_.Name} | group extension -NoElement | sort count -Desc
$searchPaths |Select Count, Name |Export-Csv "C:\Users\Linoy\Desktop\New_Script_Job\$compname.csv" -NoClobber -NoTypeInformation
