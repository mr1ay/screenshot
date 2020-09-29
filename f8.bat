	@echo off
	mode 45,15
::	title A
::	movewindow A 0 0
	
	set u=0

			:fullscreen
				set /a u=%u%+1
				if exist C:\Users\%username%\Desktop\screenshot%u%.png goto :fullscreen
				nircmd savescreenshotfull C:\Users\%username%\Desktop\screenshot%u%.png 
				start C:\Users\%username%\Desktop\screenshot%u%.png 
				exit

