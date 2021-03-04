      Program main

      character*20 letters !statement of a word with 20 letters (includes the blank)

c*******************************************************
c     This is the example for input from the screen!
      
ccc	write(*,*)'Please provide a phase' 
ccc      read(*,*)letters
ccc      write(*,*)letters


c     1. Please try hello world
c.    2. try 'hello world'
c.    3. try 'hello world this is my second Fortran code!' 

c*********************************************************
cc    Example for input data from files! Make a file named "hello.txt" with hello world in it

c      open(10, file = 'hello.txt')
c      open(11, file = 'writehello.txt')

c c     read(10,*)letters
c      write(11,*)letters
c      close(10)
c      close(11)
c.    1. hello world only
c.....2. 'hello world'

c**********************************************************

c     Example for input data from build-in type
c     for pi (3.1415926)....some constants we often use!
c      parameter(pi=3.1415926)
c      write(*,*)pi 

ccc      letters= 'Hello world!'
ccc	write(*,*)letters


      stop
      end