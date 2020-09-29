	@echo off
	mode 45,15
::	title A
::	movewindow A 0 0
	
	if not exist variable.mathindos echo.0>variable.mathindos 

	set v=0
	set m=0
	set x1y1=
	set /p a=< variable.mathindos 

	:Menu1
		set /a a=%a%+1
		echo.%a%> variable.mathindos 

		if %a%==1 goto u
		if %a%==2 goto uu


		:u
			mouse position>screencode.mr1ay
			exit


		:uu
			echo.0> variable.mathindos 
			set /p x1y1=<screencode.mr1ay
			mouse position>screencode.mr1ay
			set /p x2y2=<screencode.mr1ay
			if %x1y1%==%x2y2% goto fullscreen
			if not %x1y1%==%x2y2% goto twocoordinate
			exit

		


			:fullscreen
				set /a m=%m%+1
				if exist C:\Users\%username%\Desktop\screenshot%m%.png goto :fullscreen
				nircmd savescreenshotfull C:\Users\%username%\Desktop\screenshot%m%.png 
				start  C:\Users\%username%\Desktop\screenshot%m%.png 
				exit

			:twocoordinate
				set /a v=%v%+1
				if exist C:\Users\%username%\Desktop\ss%v%.png goto :twocoordinate
				set xx=%x1y1:x= %
				set yy= %x2y2:x= %
				nircmd savescreenshot C:\Users\%username%\Desktop\ss%v%.png  %xx% %yy%
				start  C:\Users\%username%\Desktop\ss%v%.png 
