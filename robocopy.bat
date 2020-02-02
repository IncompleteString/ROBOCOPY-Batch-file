::Copy selected files from source to destination using Robocopy
::Original file by Adam Rush, http://www.virtuallyimpossible.co.uk
::
::Switches:
::(E)mpty folders included in copy
::(V)erbose logging
::(R)etry each copy up to 15 times
::(W)ait 5 seconds between attempts
::(ZB) copy files in Restartable Mode
::(LOG) creates log file
::(NP) do not include progress txt in logfile; this keeps filesize down
::(MIR)rors a directory tree
::(MT[:n]) Do multi-threaded copies with n threads (default 8)
::(TEE) Displays output in console window

::Source path
set sourcepath="\\Path to file\file"

::Destination path
set destinationpath="Z:"

::Log path
set logpath="c:\log"

::Include format yyyy-mm-dd#hh-mm-ss.ms in log filename
set filename=name_%date:~-4,4%-%date:~-10,2%-%date:~-7,2%#%time::=-%.txt

::Run command
robocopy %sourcepath% %destinationpath% /XO /E /V /ZB /MT:128 /R:1 /W:1 /LOG:"%logpath%%filename%" /NP /TEE
