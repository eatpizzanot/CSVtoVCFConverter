# CSV to VCF Converter (PowerShell Script)

This PowerShell script is designed to convert a CSV file containing contact information into a VCF (vCard) format. It is especially useful for importing contacts from a CSV file to various applications that support the VCF format, such as email clients, smartphones, and other contact management software.

## Features

Takes a CSV file with specific columns as input
Converts contact information into VCF (vCard) format
Saves the output VCF file in the Downloads folder
Compatible with PowerShell v5.1 or newer  

### Input CSV File Format

The input CSV file should have the following columns:

1. PersonName  
2. Cellular Phone  
3. Congregation  
4. Phone1  
5. Phone2  
6. Phone3  

## Usage  

To use this script, provide the input CSV file path as an argument:

`.\CsvToVcf.ps1 -InputCsvFilePath "path\to\input.csv"`

Make sure to replace `"path\to\input.csv"` with the actual path to your CSV file. The script will automatically save the ConvertedContacts VCF file in your Downloads folder as "ConvertedContacts.vcf".

## Dependencies  

PowerShell v5.1 or newer
This script requires no external modules and works with PowerShell version 5.1 or newer.

## License

This project is available under the GNU GENERAL PUBLIC LICENSE
