Program second_code
!parameters starting from i,j,k,l,m, and n characters are integer by default 
	a1=1.05 !improvement 
    output = 1. ! don't forget to give it a initial value
	
!do i=1,18

!	if(i.eq.1)then
!		output= output*1.5
!	else
!		output=output*a1
!	endif

!    write(*,*)"After ",i," weeks, I become",output," times better"
!enddo

! get how many weeks you will become twice as good as you are!

write(*,*)"Initial value of output",output

!i = 0 ! counter
!do while(output .lt. 2) ! do the loop when the condition is true
!	output=output*a1
!	i = i + 1
!	write(*,*)"After ",i," weeks, I become",output," times better"
!enddo

i = 0 ! counter
do while(1.eq.1) ! do the loop when the condition is true, 0 is false, 1 is true
	output=output*a1
	i = i + 1	
	write(*,*)"After ",i," weeks, I become",output," times better"
	if(output .gt. 2)then
	   write(*,*)"*****After ",i," weeks, I become more twice better than I am"
	   exit !exit the current loop
	endif
enddo


end

