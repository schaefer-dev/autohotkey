; ROW 1 ------------------------------------------

CapsLock & q::
return

CapsLock & w::
    if (WinExist("ahk_exe Code.exe"))
    {
        WinActivate, ahk_exe Code.exe
    }
    else
        Run, Code.exe
return

CapsLock & e::
    if WinExist("ahk_class ExploreWClass") or WinExist("ahk_class CabinetWClass")
      {
            WinActivate
            return
      }
      else
          Send, #e
          WinWaitActive, ahk_class CabinetWClass 
return

CapsLock & r::
    if (WinExist("ahk_exe WindowsTerminal.exe"))
    {
        WinActivate, ahk_exe WindowsTerminal.exe
    }
    else
        Run, WindowsTerminal.exe
return

CapsLock & t::
    if (WinExist("ahk_exe Teams.exe"))
    {
        WinActivate, ahk_exe Teams.exe
    }
    else
        Run, Teams.exe
return

CapsLock & z::
return

;; ROW 2 -------------------------------------------

CapsLock & a::
    if (WinExist("ahk_exe studio64.exe"))
    {
        WinActivate, ahk_exe studio64.exe
    }
    else
        Run, C:\Users\schaefer\dev_tools\android-studio\bin\studio64.exe
return

; CAPSLOCK & s is bound to swapping the side of the window in window_resizing
;CapsLock & s::
;return

CapsLock & d::
    if (WinExist("ahk_exe eclipse.exe"))
    {
        WinActivate, ahk_exe eclipse.exe
    }
    else
        Run, eclipse.exe
return

CapsLock & f::
    if (WinExist("ahk_exe firefox.exe"))
    {
        WinActivate, ahk_exe firefox.exe
    }
    else
        Run, firefox.exe
return


;; ROW 3 ---------------------------------------------
CapsLock & c::
    if (WinExist("ahk_exe chrome.exe"))
    {
        WinActivate, ahk_exe chrome.exe
    }
    else
        Run, chrome.exe
return



; RIGHT Block
CapsLock & n::
    if (WinExist("ahk_exe ONENOTE.EXE"))
    {
        WinActivate, ahk_exe ONENOTE.EXE
    }
    else
        Run, ONENOTE.EXE
return

CapsLock & o::
    if (WinExist("ahk_exe OUTLOOK.EXE"))
    {
        WinActivate, ahk_exe OUTLOOK.EXE
    }
    else
        Run, OUTLOOK.EXE
return

; disable raw capslock key
capslock::rshift