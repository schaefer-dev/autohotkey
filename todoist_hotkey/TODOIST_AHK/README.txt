# This is a workaround to add global Todoist shortcuts to WINDOWS 10
_Created by Rick Staa on 10/07/2017 - Version 1.0.0_

## Manual
This workaround add the following global TODOIST shortcuts to WIN 10:
    - alt+ctrl+a (Add new task)
    - alt+ctrl+s (open todoist)

For questions, issues and suggestions go to: https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10

### Installation Instructions

1. [Download the WIN 10 Todoist app](https://www.microsoft.com/en-us/p/todoist-to-do-list-and-task-manager/9nblggh1rl1k?activetab=pivot:overviewtab)
2. [Download AutoHotKey.](https://autohotkey.com/)
3. Install AutoHotKey.
4. [Download the Workaround.](https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/archive/master.zip)
5. Unzip the Workaround file.
6. Go to the "Todoist_Global_Shortcuts_WIN10\TODOIST_AHK" folder.
7. Click on the "installer.vbs" file to install the workaround.
    -   Use the `installer.vbs` file to install the global shortcut for the regular "Todoist" windows 10 app.
    -   Use the `installer_todoist_preview.vbs` file to install the global shortcut for the "Todoist Preview" windows 10 app.
8. Start AutoHotKey and the "Todoist_global_shortcuts" script (Found in the user-startup folder) or restart the PC for the changes to take effect.

## FAQ 
 
### The workaround is not working what now?

- Make sure AutoHotkey is running on startup.

- Ensure that you have the right user privileges to add files to your user startup folder.

- Still not working go to https://github.com/rickstaa/Todoist_Global_Shortcuts_WIN10/issues



### How does this workaround work?

A windows 10 universal app can be loaded by using its AppUserModelIDs. This is done by running the following command:



> explorer shell:AppsFolder/AppUserModelID



In this command the "AppUserModelID" refers to the AppUserModelID of the app you want to load. An excellent guide on how to find the AppUserModelID
is located on:



- https://jcutrer.com/howto/windows/find-aumid



When the AppUserModelID is found, it can be used in to create an "AutoHotKey" file. This workaround just automates this process.



### What is the VBS workaround?

This workaround is the first workaround I created it can be used by people that don't like using AutoHotKey. See the README.txt in the TODOIST_VBS folder 
for instructions.
