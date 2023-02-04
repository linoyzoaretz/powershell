$A = "C:\Users\Linoy\Desktop\My Scripts\Diff_Script\A.txt"
$B = "C:\Users\Linoy\Desktop\My Scripts\Diff_Script\B.txt"
$OutFile = "C:\Users\Linoy\Desktop\My Scripts\Diff_Script\Difference.csv"

Compare-Object (get-content $A) (get-content $B) | Out-File $OutFile

