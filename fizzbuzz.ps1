For ($i=1; $i -le 100; $i++) {
    $line=''
    If ($i % 3 -eq 0) { $line+='Fizz' }
    If ($i % 5 -eq 0) { $line+='Buzz' }
    If ($line.Length -eq 0) { $line=$i }
    Write-Output $line
}
