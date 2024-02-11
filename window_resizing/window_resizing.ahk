WindowThird(Width = 0,Height = 0, Xpos = 0, Ypos = 0)
{
  WinGetPos,X,Y,W,H,A
  If %Width% = 0
    Width := W

  If %Height% = 0
    Height := H

  WinMove,A,,%Xpos%,%Ypos%,%Width%,%Height%
}

LeftScreenHalf()
{
    WinGetPos,,, Width, Height,A
    WinMove,A , ,0 ,0 , .5 * A_ScreenWidth * A_ScreenDPI/96, 1 * A_ScreenHeight * A_ScreenDPI/96 - 50 * A_ScreenDPI/96
}

RightScreenHalf()
{
    WinGetPos,,, Width, Height,A
    WinMove,A , ,.5 * A_ScreenWidth * A_ScreenDPI/96 ,0 , .5 * A_ScreenWidth * A_ScreenDPI/96, 1 * A_ScreenHeight * A_ScreenDPI/96 - 50 * A_ScreenDPI/96
}

RightScreenUpperHalf()
{
    WinGetPos,,, Width, Height,A
    WinMove,A , ,.5 * A_ScreenWidth * A_ScreenDPI/96 ,0 , .5 * A_ScreenWidth * A_ScreenDPI/96, 0.5 * A_ScreenHeight * A_ScreenDPI/96 - 25 * A_ScreenDPI/96
}

RightScreenLowerHalf()
{
    WinGetPos,,, Width, Height,A
    WinMove,A , ,.5 * A_ScreenWidth * A_ScreenDPI/96 ,0.5 * A_ScreenHeight * A_ScreenDPI/96 -  25 * A_ScreenDPI/96, .5 * A_ScreenWidth * A_ScreenDPI/96, 0.5 * A_ScreenHeight * A_ScreenDPI/96 - 25 * A_ScreenDPI/96
}


; three tile layout
;#!1::WindowThird(1145,1390, 0, 45)
;#!2::WindowThird(1145,1390, 1145, 45)
;#!3::WindowThird(1145,1390, 2290, 45)
;#!4::WindowThird(960,1035, 0, 45)
;#!5::WindowThird(960,1035, 960, 45)

; Two Tile layout
;Capslock & 1::LeftScreenHalf()
;Capslock & 2::RightScreenHalf()
;Capslock & 3::RightScreenUpperHalf()
;Capslock & 4::RightScreenLowerHalf()

; Two Tile layout - Windows keys
Capslock & 1::
    Send {LWin Down}{Left}{LWin Up}
return
Capslock & 2:: 
    Send {LWin Down}{Right}{LWin Up}
return
;Capslock & 3::RightScreenUpperHalf()
;Capslock & 4::RightScreenLowerHalf()


; The default Windows 10 Taskbar Height (40 pixels) plus the approximate
; default window bottom border (decoration) thickness (~15 pixels).
Taskbar := 55

; Upper Left
^F4:: WinMove, A, , 0, 0

; Upper Right
^F5::
    WinGetPos, , , Width, Height, A
    WinMove, A, , (A_ScreenWidth - Width), 0
    Return

; Lower Left (No Taskbar)
^F6::
    WinGetPos, , , Width, Height, A
    WinMove, A, , 0, (A_ScreenHeight - Height)
    Return

; Lower Left (With Taskbar)
; ^F6::
    ; WinGetPos, , , Width, Height, A
    ; WinMove, A, , 0, (A_ScreenHeight - Height - Taskbar)
    ; Return

; Lower Right (No Taskbar)
^F7::
    WinGetPos, , , Width, Height, A
    WinMove, A, , (A_ScreenWidth - Width), (A_ScreenHeight - Height)
    Return

; Lower Right (With Taskbar)
; ^F7::
    ; WinGetPos, , , Width, Height, A
    ; WinMove, A, , (A_ScreenWidth - Width), (A_ScreenHeight - Height - Taskbar)
    ; Return

; Center the active window in the middle of the screen.
^F8::
    WinGetPos, , , Width, Height, A
    WinMove, A, , (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
    Return