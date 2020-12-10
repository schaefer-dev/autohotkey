WindowThird(Width = 0,Height = 0, Xpos = 0, Ypos = 0)
{
  WinGetPos,X,Y,W,H,A
  If %Width% = 0
    Width := W

  If %Height% = 0
    Height := H

  WinMove,A,,%Xpos%,%Ypos%,%Width%,%Height%
}

#!1::WindowThird(1145,1390, 0, 45)
#!2::WindowThird(1145,1390, 1145, 45)
#!3::WindowThird(1145,1390, 2290, 45)
#!4::WindowThird(960,1035, 0, 45)
#!5::WindowThird(960,1035, 960, 45)
