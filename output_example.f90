Program output_example
!     this is an example script to show you how to read from and write data into many files at once
!     the way to make subdirectory also shown      
implicit real*8(a-h,o-z)  ! help you remember the parameter types
character*20 fname,test,namef
          
!do 11 i=1,10,1	!just a counter for 10 times

	i=1
	WRITE(fname,'(a,i3.3,a)')'test',i,'.dat' !assign a formatted filename

	open(112,file=fname,status='unknown')

	write(112,*)i,"test"  !! make files and write things into each file

	!read(112,*)i1,test    !! read things from files
	!write(*,*) i1,test    !! output data on screen
      
	close(112)
!11    continue

!*************** create the subdirectory
!
!     
!   call system("rd/s/q NSYSU") !! this way help you get the new data from your latest script
!	call system("mkdir NSYSU")
!
!      i=1
!      write(namef,'("./",a,"/","test.dat")')"NSYSU"
!	write(*,*)namef
!      open(02,file=namef,status='unknown')
!      write(02,*)i,"test"
!      close(02)

	end

!      quiz 
!      1. Please create many files with data into a subfolder
!      2. Please read files from the above files you create.
