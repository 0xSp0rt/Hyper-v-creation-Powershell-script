<h1> Creating a virtual machine in Hyper-v using powershell scripts. </h1>
The use of powershell scripts for creating virtual machines allows for automation of the process and makes it easier to create virtual machines on Hyper-V without using the GUI. <br>
Powershell allows us to create the virtual machine in one go, allowing us to make predefined settings without having to manually make the changes after the virtual machine has been created.
It is important to know that the Hyper-v feature still has to be turned on with certain windows editions that support Hyper-v to ensure that this script works as intended. It is also advised that this script is run in powershell(ISE) administrative mode to allow for elevated privileges.

The script can be modified to suit changes such as your virtual machine name, virtual switch name and the path for the ISO files used for the virtual machine as well as the number of processors and the use of secureboot.
