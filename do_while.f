      Program Do_while
c..... You have to use a file called data.dat
C...   modified on 2016/10/20
      Implicit none
      Integer i,read_test,iostat
	Real*8 A,B
      Character*10 text1,text2
	read_test = 0
      i=0 !used as a counter (or you may use -1)

      open(10, file='grade_sheet.txt',status= 'unknown')
      
      
      read(10,*)text1,text2
      write(*,*)text1,text2

      do while(read_test .eq. 0)

c........iostat indicates the file reading situation to read_test
c........1. read_test > 0 error when reading
c........2. read_test = 0 reading correctly
c........3. read_test < 0 read the last data of the file (repeat to read the last line)
        
        i=i+1
	  read(10,*,iostat=read_test)A,B  
c	  write(*,*)i, read_test,iostat
c	  write(*,*)A,B      

       
      enddo

c..... any codes are useless here!
      
10    continue
 
	close(10)
      write(*,*)"The total items are ",i-1
	end


C.....Quiz:
C      1.get N for N!, which is the closest to 123456789
c...   2.get Sum(1/N!)  for N=100

C.....