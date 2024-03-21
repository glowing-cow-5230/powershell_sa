# PowerShell Scripting Challenge: Log File Analysis for Suspicious Activity

# Define the path to the log file (students should replace this with the actual path)
$logFilePath = "C:\Users\<username>\<path_to_auth.log>"

# Read the log file
# Note: No modification needed here
$logEntries = Get-Content $logFilePath

# Initialize a counter for suspicious activity
$suspiciousActivityCount = 0

# Initialize an ArrayList to store unique invalid username attempts
$usernames = New-Object System.Collections.ArrayList

# Loop through each log entry in the file
foreach ($entry in $logEntries) {
    # -----------------
    # STUDENT CODE HERE
    # -----------------
    # [1] Students should modify the code below to analyze a log entry for suspicious patterns here
    # HINT: Use the -match operator to search for patterns in strings
    # This loop should increment the counter if the event contains the string 'input_userauth_request'
    # As written below, the counter is incremented for every entry. 

    $entryIsSuspicious = $true
    if ($entryIsSuspicious) {
        # Use Write-Host to help debug your code if necessary. Or comment it out
        Write-Host "Remove this print statement... I matched on: " $entry
        $suspiciousActivityCount++
    }

    # -----------------
    # STUDENT CODE HERE
    # -----------------
    # [2] modify your code above to extract the username from each 'input_userauth_request' log event
    # If the username is not already in the array $usernames, add it to the array
    # else, continue to the next entry
    # HINT: you can split an entry on whitespace characters and store the array of substrings 
    # into a variable using `$substrings = $entry -split '\s+'`
    # HINT: Accessing a substring in an array is the same syntax as Python
    # e.g. $ss1 = $substrings[1]
    # HINT: you can check if a string exists in an Array/ArrayList using `$myarraylist -ccontains $mystring`
    # see examples here https://morgantechspace.com/2019/02/powershell-string-comparisons.html
    # use -ccontains to do "case-sensitive" checking for this problem
    # HINT: you can append to an array in powershell using $myarraylist.Add($mystring) > $null
    # the `> $null` redirects the output of ArrayList.Add(), supressing noisy output printed to the console
    # HINT: you may need to use nested if statements before appending the username

}



# Output the total number of suspicious activities found
# Note: No modification needed here
Write-Host "Total Suspicious Activities Found: $suspiciousActivityCount"
Write-Host "Unique usernames: " + $usernames.Count

