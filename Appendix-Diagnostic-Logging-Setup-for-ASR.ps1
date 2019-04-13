logman create trace ASRDebug -v mmddhhmm -o C:\temp\asr.etl -cnf 01:00:00 -nb 10 250 -bs 16 -ow -y
logman update ASRDebug -p "Microsoft-Azure Site Recovery-Provider" 0x8000000000000000 0x5
logman update ASRDebug -p "MicrosoftAzureRecoveryServices" 0xC000000000000000 0x5

logman start ASRDebug

logman stop ASRDebug

netsh trace convert C:\temp\asr_04131805.etl