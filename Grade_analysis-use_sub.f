      Program grade_analysis
      implicit none
	integer courseNo,stuNo
	parameter (courseNo=4,stuNo=10000)
      Real*8:: English(courseNo,stuNo),bin !***********
     
	Character*10 CEng(courseNo,stuNo),ID_course_Name(5)
	Integer i,Id(stuNo),binNo,binCounter(courseNo,100) 
      Integer lower_bound,upper_bound,j
      open(10,file="grade_sheet-four.txt",status="old")

	read(10,*)(ID_course_Name(i),i=1,5) !read the first line in grad_sheet.txt. 
      
	do 11 i=1,10000        
        read(10,*)Id(i),(English(j,i),j=1,4)
11    continue

      close(10)

C**********************Grade Analysis******************************


      open(12,file="grade_analysis.txt",status="unknown")
      write(12,"(5A10)")(ID_course_Name(i),i=1,5)
c      do 13 i=1,10000
c        if(English(i).ge.90)then
c           write(12,"(I10.5,A10)")i,"A"
c        elseif(English(i).ge.80.and.English(i).lt.90)then
c	     write(12,"(I10.5,A10)")i,"B"
c	  elseif(English(i).ge.70.and.English(i).lt.80)then
c	     write(12,"(I10.5,A10)")i,"C"	  
c	  elseif(English(i).ge.60.and.English(i).lt.70)then
c	     write(12,"(I10.5,A10)")i,"D" 
c        else
c	     write(12,"(I10.5,2X,A10)")i,"Fail"
c        endif
c13    continue
      
      call grade_convertor(courseNo,stuNo,English,CEng)

	
	do j=1,stuno
      write(12,"(I10.5,4(F10.5,2X,A10))")Id(j),
     &                 	(English(i,j),CEng(i,j),i=1,courseNo)
	
      enddo
	close(12)
C*********************Grade Distribution ***************************

	
	 
c      open(15,file="grade_distribution.txt",status="unknown")
c      bin =1
c	binNo=(100/bin)
      
c      binCounter= 0 ! set all elements zero before you use an array

c	do 14 i=1,10000
c        do 15 j=1,binNo
c           lower_bound=(j-1)*bin
c	     upper_bound=j*bin
c          if(English(i).ge.lower_bound.and. English(i).lt.upper_bound)
c     &		                                                     then
c             binCounter(j)=binCounter(j)+1
c          endif  

c15      continue
c14    continue
      
c	do 16 i=1,binNo       
c           lower_bound=(i-1)*bin
c	     upper_bound=i*bin          
c          write(15,*)dble(lower_bound+upper_bound)/2.d0,binCounter(i)
c16      continue
     
      
c	close(15)

	end



      subroutine grade_convertor(courseNo,stuNo,English,CEng) 
      integer courseNo,stuNo ! you may assign different names in the subroutine
	
      Real*8:: English(courseNo,stuNo)
	Character*10 CEng(courseNo,stuNo) 
!     after using this subroutine, the above parameters will be gone (not stored in the ram).
     
      
      do 14 j=1,courseNo
         do 13 i=1,stuNo
            if(English(j,i).ge.90)then
              CEng(j,i)="A"
            elseif(English(j,i).ge.80.and.English(j,i).lt.90)then
	         CEng(j,i)="B"
	      elseif(English(j,i).ge.70.and.English(j,i).lt.80)then
	        CEng(j,i)="C"	  
	      elseif(English(j,i).ge.60.and.English(j,i).lt.70)then
	        CEng(j,i)="D" 
            else
	        CEng(j,i)="Fail"
            endif
13       continue
14    continue

      return
	end

