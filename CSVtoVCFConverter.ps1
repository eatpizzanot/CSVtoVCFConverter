# CSV to VCF conversion script
param(
    [Parameter(Mandatory = $true)]
    [string]$InputCsvFilePath
)

# Read CSV file and import its content
$csvContent = Import-Csv -Path $InputCsvFilePath

# Initialize an empty array to store vCard data
$vcards = @()

foreach ($row in $csvContent) {
    # Create a new vCard for each row in the CSV file
    $vcard = @"
BEGIN:VCARD
VERSION:3.0
N:;$($row.PersonName);;;
FN:$($row.PersonName)
TEL;TYPE=CELL,VOICE:$($row.'Cellular Phone')
TEL;TYPE=WORK,VOICE:$($row.Phone1)
TEL;TYPE=HOME,VOICE:$($row.Phone2)
TEL;TYPE=OTHER,VOICE:$($row.Phone3)
ORG:$($row.Congregation)
END:VCARD
"@

    # Add the vCard to the array
    $vcards += $vcard
}

# Set the output VCF file path in the Downloads folder
$downloadsFolderPath = Join-Path -Path $env:USERPROFILE -ChildPath "Downloads"
$outputVcfFilePath = Join-Path -Path $downloadsFolderPath -ChildPath "output.vcf"

# Write the vCard data to the output file
$vcards | Set-Content -Path $outputVcfFilePath

Write-Host "CSV file has been converted to VCF format and saved to $outputVcfFilePath" -ForegroundColor Green
