# Bash project

### Create an interactive CLI application. With the following requirements

The application shall have two modes, admin mode and user mode.
Admin mode is active when application is opened with sudo command

# The application shall have the following options
### 1- System : 
show following system information using Procfs
- CPU info (usage, temperature, frequency)
- RAM (usage percentage, used in GB)
- DISK (used percentage, free space)
- Active for Both modes
 
### 2- Devices : 
show the device in the system with their information and topology from using Sysfs
- Change CPU policy (Optional)
- Set battery threshold (ex. 60%) (Optional)
- Control PC LEDs (ex. CAPS-LOCK LED)
Active for Admin mode only
 
(Optional if not VM) Directory Sync over network: user shall specify the target ip and source and target folder to sync the two folders.
Active for both modes

### 3- Network : 
shall log the following information about the system (IP , DNS , download/upload rate)
Active For Both modes

### 4- Reboot, shutdown : 
shall control the system state
Active for Admin mode only

### 5- Kernel logs :
shall put the kernel log in real time

The application should have an always on log file which saves the logs of the executed buttons and commands. The log file shall reflect the log live and correct

use bash bash_project.sh to run 
