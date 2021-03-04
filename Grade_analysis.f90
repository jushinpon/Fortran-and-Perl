Program grade_analysis
implicit none
Real*8:: English(10000),bin
 
Character CEng(10000)
Integer i,Id(10000),binNo,binCounter(100),stuNo 
Integer lower_bound,upper_bound,j
common English,CEng,stuNO

stuNo = 10000 ! total student number

open(10,file="grade_sheet.txt",status="old")

read(10,*) !read the first line in grad_sheet.txt. 
  
do 11 i=1,stuNo        
        read(10,*)Id(i),English(i)
11    continue

close(10)

!**********************Grade Analysis******************************
open(12,file="grade_analysis.txt",status="unknown")

write(12,"(2A10)")"Id","English"
!do 13 i=1,stuNo
!  if(English(i).ge.90)then
!     write(12,"(I10.5,A10)")i,"A"
!  elseif(English(i).ge.80.and.English(i).lt.90)then
!   write(12,"(I10.5,A10)")i,"B"
!  elseif(English(i).ge.70.and.English(i).lt.80)then
!   write(12,"(I10.5,A10)")i,"C"	  
!  elseif(English(i).ge.60.and.English(i).lt.70)then
!   write(12,"(I10.5,A10)")i,"D" 
!  else
!   write(12,"(I10.5,2X,A10)")i,"Fail"
!  endif
!13    continue
!close(12)
call grade_convertor !use common
!call grade_convertor(stuNo,English,CEng) ! passing parameters
do 13 i = 1,stuNo
    write(12,"(I10.5,A10)")i,CEng(i)
13 continue
close(12)


!*********************Grade Distribution ***************************	
	 
open(15,file="grade_distribution.txt",status="unknown")
bin =1
binNo=(100/bin)
    
binCounter= 0 ! set all elements zero before you use an array

do 14 i=1,stuNo
      do 15 j=1,binNo
         lower_bound=(j-1)*bin
         upper_bound=j*bin
       if(English(i).ge.lower_bound .and. English(i).lt.upper_bound)then
           binCounter(j)=binCounter(j)+1
        endif  

15      continue
14    continue
      
do 16 i=1,binNo       
   lower_bound=(i-1)*bin
   upper_bound=i*bin          
   write(15,*)dble(lower_bound+upper_bound)/2.d0,binCounter(i)
16      continue
     
      
close(15)

end

!	Quiz

!      1.make a subroutine to replace the Grade Analysis part
!      2.also make a subroutine to replace the Grade Distribution part


!use common (like global parameters, lik pointer in C)
!subroutine grade_convertor 
!Real*8 English(10000) 
!Character CEng(10000)
!Integer stuNo 
!common English,CEng,stuNo
!
!do 13 i=1,stuNo
!   if(English(i).ge.90)then
!     CEng(i)="A"
!   elseif(English(i).ge.80.and.English(i).lt.90)then
!     CEng(i)="B"
!   elseif(English(i).ge.70.and.English(i).lt.80)then
!     CEng(i)="C"	  
!   elseif(English(i).ge.60.and.English(i).lt.70)then
!     CEng(i)="D" 
!   else
!     CEng(i)="Fail"
!   endif
!13  continue
!write(*,*)"stuNo= ",stuNO
!return !!!!!! need to return to main program
!end

! passing arguments (parameters)

!subroutine grade_convertor(stuNo,English,CEng) 
!integer stuNo ! you may assign different names in the subroutine
!Real*8:: English(stuNo)
!Character CEng(stuNo) 
!!     after using this subroutine, the above parameters will be gone (not stored in the ram).
!
!do 13 i=1,stuNo
!   if(English(i).ge.90)then
!     CEng(i)="A"
!   elseif(English(i).ge.80.and.English(i).lt.90)then
!     CEng(i)="B"
!   elseif(English(i).ge.70.and.English(i).lt.80)then
!     CEng(i)="C"	  
!   elseif(English(i).ge.60.and.English(i).lt.70)then
!     CEng(i)="D" 
!   else
!     CEng(i)="Fail"
!   endif
!13  continue
!
!return !!!!!! need to return to main program
!end


