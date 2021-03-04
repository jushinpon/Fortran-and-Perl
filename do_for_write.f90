Program dowrite
	
Character*10 D(100)
integer ID(10000),counter
real*8  grade(40000)! you can also use multiple dimensional array
  
open(11,file="grade_sheet-four.txt",status="old")
open(12,file="output_test.txt",status="unknown")

read(11,"(5a)")(D(i),i=1,5) !!! read the header, but you need to check its format
write(12,"(5a)")(D(i),i=1,5)
!read(11,"(i4,4f5.1)")ID(1),(grade(j),j=1,4)
!read(11,*)ID(1),(grade(j),j=1,4)

!read(11,"(i5,4f5.1)")ID(i),grade(1),grade(2),grade(3),grade(4)
!read(11,*)ID(1),grade(1),grade(2),grade(3),grade(4)
	
do 112 i=1,10000
	counter = (i-1)*4
	!read(11,"(i4,4f5.1)")ID(i),(grade(counter+j),j=1,4) !!! need to check the format
	read(11,*)ID(i),(grade(counter+j),j=1,4) !!! need to check the format
	!read(11,"(i5,4f5.1)")ID(i),grade(counter+1),grade(counter+2),grade(counter+3),grade(counter+4)
	!write(*,*)ID(i),(grade(counter+j),j=1,4)
	write(12,"(i5,4f5.1)")ID(i),(grade(counter+j),j=1,4)	 
112   continue

	
close(11)
close(12)
stop
end

