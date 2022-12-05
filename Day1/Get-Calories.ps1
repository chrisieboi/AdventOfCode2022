$ScriptPath = "E:\Repositories\AdventOfCode2022\Day1\"

$calorielist = Get-Content "$($Scriptpath)input.txt"

#create empty hashtable to keep track of calorie/elf
$elfhashlist = @{}
#initiate on elf number 1
$elfcount = 1

#walk through the calorielist
foreach ($calorie in $calorielist) { 
    #Parse string as int
    $calorie = $calorie -as [int]
    #check if empty line (space is parse as 0)
    if ($calorie -eq 0) {
        $elfcount++        
        Write-Output "Empty calorie found, this elf $elfcount is accounted for"
    }
    else {
        Write-Output "Calorie $calorie found"
        #if key exists, add the caloriecount, else make a new value
        if ($elfhashlist.Containskey($elfcount)) {
            $elfhashlist.$elfcount = $elfhashlist.$elfcount + [int]$calorie
        }
        else {
            $elfhashlist.add($elfcount, $calorie)
        } 
    } 
}

$sorted = $elfhashlist.GetEnumerator() | sort -property value -Descending

[int]$sum = 0

$sorted[0, 1, 2].Value | % { $sum += $_ }

$sum