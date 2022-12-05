$ScriptPath = "E:\Repositories\AdventOfCode2022\Day2\"

$InputFile = Get-Content "$($Scriptpath)input.txt"

[int]$Totalscore = 0
$InputFile.count

###### PART 1#######
foreach ($line in $InputFile) {
    $him = -split $line[0]
    $you = -split $line[2]

    Switch ($him) {
        "A" { if ($you -eq "X") { $Totalscore += 4 }elseif ($you -eq "Y") { $Totalscore += 8 }else { $Totalscore += 3 } }
        "B" { if ($you -eq "Y") { $Totalscore += 5 }elseif ($you -eq "Z") { $Totalscore += 9 }else { $Totalscore += 1 } }
        "C" { if ($you -eq "Z") { $Totalscore += 6 }elseif ($you -eq "X") { $Totalscore += 7 }else { $Totalscore += 2 } }
    }

}

$Totalscore

###### PART 2#######

[int]$Totalscore = 0
$Totalscore

foreach ($line in $InputFile) {
    $him = -split $line[0]
    $you = -split $line[2]
    
    Switch ($him) {
        "A" { if ($you -eq "X") { $Totalscore += 3 }elseif ($you -eq "Y") { $Totalscore += 4 }elseif($you -eq "Z") { $Totalscore += 8 } }
        "B" { if ($you -eq "X") { $Totalscore += 1 }elseif ($you -eq "Y") { $Totalscore += 5 }elseif($you -eq "Z") { $Totalscore += 9 } }
        "C" { if ($you -eq "X") { $Totalscore += 2 }elseif ($you -eq "Y") { $Totalscore += 6 }elseif($you -eq "Z") { $Totalscore += 7 } }
    }
    
}

$Totalscore
