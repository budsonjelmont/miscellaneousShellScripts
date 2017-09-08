# Script to recursively search an archive of stored autofill output files (currently located at E:/XMLinput/old
# on all quantitation nodes) and return the paths to folders containing a quant file containing a user-specified
# counter # from Peptide Depot.

Param(
	[string]$counter,
	[string]$pathToOld
)

Write-Host $counter
Write-Host $pathToOld

Get-ChildItem $pathToOld | 
Foreach-Object {
	
    $content = Get-Content $_.FullName
	Write-Host $content

    # #filter and save content to the original file
    # $content | Where-Object {$_ -match 'step[49]'} | Set-Content $_.FullName

    # #filter and save content to a new file 
    # $content | Where-Object {$_ -match 'step[49]'} | Set-Content ($_.BaseName + '_out.log')
}