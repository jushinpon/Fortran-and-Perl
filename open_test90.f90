Program main

character*20 letters !statement of a word with 20 letters (includes the blank)

!*******************************************************
!     This is the example for input from the screen!
      
	!write(*,*)'Please provide a phase' 
    !read(*,*)letters
    !write(*,*)letters


!    1. Please try hello world
!    2. try 'hello world'
!    3. try 'hello world this is my second Fortran code!' 

!*********************************************************
!    Example for input data from files! Make a file named "hello.txt" with hello world in it
!
    !  open(10, file = 'hello.txt')
    !  open(11, file = 'writehello.txt')
	!
    !  read(10,*)letters
    !  write(11,*)letters
    !  close(10)
    !  close(11)
	  
!.    1. hello world only
!.....2. 'hello world'

!**********************************************************
!
!     Example for input data from build-in type
!     for pi (3.1415926)....some constants we often use!

!      parameter(pi=3.1415926)
!      write(*,*)pi 
!
!      letters= 'Hello world!'
!	   write(*,*)letters


      stop
      end