      Program random_generator
      implicit none
	real,external:: rand      
 
      Integer i,j
	Real*8 basegrade

	basegrade=100.
c      seed
      open(10,file="grade_sheet.txt",status="unknown")

c      write(10,"(5A10)")"ID","English","Calculus", "Physics","Chemistry"
      write(10,"(5A10)")"ID","English"


	do 11 i=1,100

c	write(10,"(i10.5,4f10.1)")i,basegrade*rand(),basegrade*rand(),
c     &basegrade*rand(),basegrade*rand()

	write(10,"(i10.5,f10.1)")i,basegrade*rand()

 11   continue

      close(10)
	end

      function rand()
      implicit none
      real*8 r,rand
      call random_number(r)
	rand = r
	return
	end
