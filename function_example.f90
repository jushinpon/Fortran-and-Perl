Program function_example

Integer i
Real*8 A,B,C,Increment,x
external test ! use a function
open(10, file='data.dat',status= 'unknown')
Increment = 0.001
  
do 11 i =1,10000
        x=Increment*(dble(i)-1.)
!        A = sin(x)
!        A = exp(x)

!	  write(10,*)x,A

        write(10,*)x,test(x)
      
11    continue
 
close(10)

end


function test(a)
  
real*8 a 

test=sin(a)

return !back to main code
end

!include "function_test.f90"

!     Quiz:
!     1. try to use subroutine for the function.
