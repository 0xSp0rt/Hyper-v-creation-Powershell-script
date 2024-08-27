#The VM -Name, path, SwitchName, SwitchType, MemoryStartupBytes, Processor count can be modified based on individual machine and required file paths.

New-VMSwitch -Name 'X.Privateswitch' -SwitchType 'Private' #This line creates a virtual switch named "X.Privateswitch' and -switch type as "Private" for the virtual machine. The name and switch type can be modified as required.

New-VM -Name 'ServerOS.2022' -MemoryStartupBytes 4096MB -Generation 2 -Path 'C:\Programdata\Microsoft\Windows\Hyper-V' -SwitchName 'X.Privateswitch' #This line creates a Virtual machine with the name "Server2022", RAM as 4gb, Generation 2 for the generation, Path to store the virtual machine on hard disk and the switch for the virtual machine to use which was written in line 1

New-VHD -Path 'C:\Programdata\Microsoft\Windows\Virtual Hard Disks\ServerOS.2022.vhdx' -SizeBytes 60GB -Dynamic\ #This line created a new virtual hard disk(VHD) path, the size of the VHD for the VM and Dynamic storage for the VHD.

Add-VMHardDiskDrive -VMName 'ServerOS.2022' -Path 'C:\Programdata\Microsoft\Windows\Virtual Hard Disks\ServerOS.2022.vhdx' #This line includes the virtual hard disk drive path for the virtual machine.

Add-VMDvdDrive -VMName 'ServerOS.2022' -Path 'C:\Users\samue\OneDrive\Desktop\20348.169.210806-2348.fe_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso' #This line includes the path for the iso file required for the virtual machine.

Set-VMFirmware -VMName 'ServerOS.2022' -EnableSecureBoot Off #This line turns off secureboot by default for the VM.

Set-VMProcessor -VMName 'ServerOS.2022' -Count 4 #This line sets the number of VM processor to 4. This can be modified as required.
