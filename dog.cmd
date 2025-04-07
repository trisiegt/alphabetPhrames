@echo on
chcp 65001
cls
set "file=mus_sigh_of_dog.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
@echo off
cls
goto dogframes


:dogframes    
                   
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
type frame02.txt   
timeout /t 1 /nobreak > NUL
cls
type frame01.txt                                                                                                    
timeout /t 1 /nobreak > NUL
cls
exit
