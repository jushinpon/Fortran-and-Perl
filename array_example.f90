      Program array_example
      implicit none


      Real*8 A(100),maxgrade ! one dimension
	Real*8 B(3,100) ! two dimensions
	Real*8 C(3,3,100) ! three dimensions    
	Character D(100) ! words
	Integer Id(100),i  !integer

      open(10,file="grade_sheet.txt",status="old")

      read(10,*)

	do 11 i=1,100
       read(10,*)Id(i),A(i)
11    continue

      close(10)

      

      A=dsqrt(A)*10.
       
      

      open(11,file="adj_grade_sheet.txt",status="unknown")

      write(11,"(A5,A20)") "Id", "Adjusted Grade "

      do 12 i=1,100
         
       write(11,"(I5.1,F20.1)")Id(i),A(i)

12    continue	

      close(11)

	end

!	Quiz:

!      1. Output a file including Id, original grade, adjusted grade, and the difference between the previous two
!      2. Please transfer it to a 等第制 and write the Id, original grade, and  等第制 to a file (for a loop control)
!      3. online look up request
 
