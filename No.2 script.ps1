New-VMSwitch -Name 'OlamideS.Privateswitch' -SwitchType 'Private'
New-VM -Name 'ServerOS.2022' -MemoryStartupBytes 4096MB -Generation 2 -Path 'C:\Programdata\Microsoft\Windows\Hyper-V' -SwitchName 'OlamideS.Privateswitch'
New-VHD -Path 'C:\Programdata\Microsoft\Windows\Virtual Hard Disks\ServerOS.2022.vhdx' -SizeBytes 60GB -Dynamic\
Add-VMHardDiskDrive -VMName 'ServerOS.2022' -Path 'C:\Programdata\Microsoft\Windows\Virtual Hard Disks\ServerOS.2022.vhdx'
Add-VMDvdDrive -VMName 'ServerOS.2022' -Path 'C:\Users\samue\OneDrive\Desktop\20348.169.210806-2348.fe_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso'
Set-VMFirmware -VMName 'ServerOS.2022' -EnableSecureBoot Off
Set-VMProcessor -VMName 'ServerOS.2022' -Count 4