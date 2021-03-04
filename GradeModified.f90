Program main
implicit real*8(a-h,o-z)  ! help you remember the parameter types
character*10 index,phy

grade = 0. ! grade, a real number
ind = 0 ! 

open(112,file="grade.txt",status='old')
open(113,file="modified_grade.txt",status='unknown')

!read(112,*)index,phy
!write(113,*)index,phy
read(112,*)        
do 11 i=1,4	!just a counter for 10 times

	read(112,*)ind,grade
	write(113,*)i,sqrt(grade)*10.  !! make files and write things into each file

11    continue

close(112)
close(113)

end
