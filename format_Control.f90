Program format_control
implicit none 

Real*8 A1
Integer i

A1 = 10 ! or A1 = 10.d0
i = 10 
write(*,*) "A1 is ",A1,"i is ",i
write(*,"(A,f10.4,A,I4)")"A1 is",A1,"i is ",i
write(*,"(A,f10.4,x,A,I4)")"A1 is",A1,"i is ",i
write(*,"(A,f10.4,x,A,I4.4)")"A1 is",A1,"i is ",i
write(*,20)"A1 is",A1,"i is ",i
20    format(A,f10.4,5x,A,I4.4)

!*****************************************
!n=20
!x=1.5
!y=100.1
!write (*,10) n, x, y
!10    format (i4,4x,f10.4,2x,f10.4)

!****************************************
!
!area = 40.5
!write (*,30) "The area is ", area
!30    format (a,f8.5)


!write (*,20) area
!20    format ("The area is ",f8.5)
end