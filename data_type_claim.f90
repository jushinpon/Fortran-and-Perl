Program Data_type_claim
      implicit real*8(a-h,o-z)
!      implicit none

!***** if you don't use one of the above statement, Fortran will use the default setting for number claim!
!**** That is the parameters with the first letter of anyone of letters "i,j,k,l,m,n" are rgarded as integers! 
      
!integer A !by default, about 10 digital number!
	
! real A
     
write(*,*)"Please provide a number: "
read(*,*)A
write(*,*)A

!********* integer calculation test
!A = 1.4
!B=2.5
!C=1/2
!D=dble(1) !intrinsic function to convert an interger to double precision floating point number 
!write(*,*)A,B,C

! ******* digital number test for real 

!      Real A,B
!      Real*8 A,B
!	A = 1000000
!	B= 0.1
!	write(*,*)A+B 
      ! better to claim "Real*8" at all times.

!******* claim for character

!Character*20 string
!string = "Good morning!"
!write(*,*)string
!string(6:) = "evening!" !change letters from 6 to 20
!write(*,*)string


!******* logical test for loop control
    
!      logical Log ! used for If or while for loop control
!
!     Log =0
!     Log = 1
!      log = .true.
!	log = .false.      
!	Log = (1 .lt. -4)
!      Log = (1 .eq. -4)
!      Log = (1 .ne. -4)
!      Log = ( 1 .lt. 3) .or. (5 .lt. 3)
!      Log = ( 1 .lt. 3) .ne. (5 .lt. 3)
!      Log = ( 1 .lt. 3) .eq. (5 .lt. 3)
!      Log = .not. ( 1 .lt. 3) .eq. (5 .lt. 3)
!
!	write(*,*)Log

end 

