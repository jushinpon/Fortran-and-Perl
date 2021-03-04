Program math_calculation_with_intrinsic_function

!implicit none
!claim data type

Real*8  A,B,C,D,test	
A=1.2
B= exp(A)
C= cos(B**2)
D= sqrt(C)	!square root or C**(1./2.)

write(*,*)A,B,C,D	
	   
write(*,*)C**(1./2.)

!....... Sin(x), Cos(x) test: x is in rad (£k=180«×)
test =acos(-1.0)
A = Sin(180.)
B = Sin(3.1415926)
write(*,*)A,B,test

!!! Exercise: Please write  data files for:

! 1. x sin(x)
! 2. x exp(x)
! 3. x sin(x) when x<2£k and x exp(x) when x>=2£k
! 4. Please get the area under the curves between the interval you assign. How thin the bar length can 
!    you get an acceptable integral area values? Maybe you can use two loops and output the number of bar
!    and the corresponding area to check it.

end