
#Global Variables

$FNSS = "FolderNameSourceServer"
$SS = "SourceServer"
$DS1 = "DestinationServer1"
$DS2 = "DestinationServer2"


#Source Server

$Source = "\\" + $SS + "\C$\" + $FNSS + ""

##########################################

# Destination Folder and Log File Server 1

$Destination1 = "\\"+ $DS1 + "\C$\" + $FNSS + ""

$logfile1 = "c:\"+ $DS1 + "-Log-Report.txt"

##########################################

# Destination Folder and Log File Server 2

$Destination2 = "\\"+ $DS2 + "\C$\" + $FNSS + ""

$logfile2 = "c:\"+ $DS2 + "-Log-Report.txt"


##########################################
# /MIR = Mirrors a directory tree.
# /COPYALL = Copies all file information: Data, Attributes, Time stamps, NTFS access control list (ACL),Owner information, Auditing information
# /W:5 = Specifies the wait time between retries, in seconds. (wait time 35 seconds).
# /R:3 = Specifies the number of retries on failed copies ( 3 retries )
# /LOG+: = Writes the status output to the log file (appends the output to the existing log file).
# /TEE = Writes the status output to the console window, as well as to the log file.
##########################################

# Commmand related of Destination Server $DS1

robocopy "$Source" "$Destination1" /MIR /COPYALL /W:5 /R:3 /LOG+:"$logfile1" /TEE

##########################################

# Commmand related of destination Server $DS2

robocopy "$Source" "$Destination2" /MIR /COPYALL /W:5 /R:3 /LOG+:"$logfile2" /TEE

