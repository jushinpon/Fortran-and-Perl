!     A code to find pi value and this is a good example for introducing "module" for my Fortran course. We use a circle with radius of 1.
!     Both x and y of this circle are from -1 to 1. So the area of the square formed by four tangent lines are 4. We just use 1/4 in the +x and +y region 
!     to find Pi. The ratio of (1/4 circle)/ (1/4 square area) = (1/4 pi)/1.... we may get the Pi value now by Monte Carlo method.

include 'mt19937.f'      
program montecarlo_pi
  
use mt19937
implicit real*8(A-H,O-Z)

integer i,j,dot_inside,seed,point
real*8 rsq,np,pi,newpi,oldpi,error
  
dot_inside=0 !point number inside the circle
pi=0    ! initial pi value
point = 500000 !total random shoting points we would like to use 
seed = 19872 ! random number initial seed

CALL init_genrand(seed) !it is a subroutine in module mt19937,activate the grnd()

open(1,file='pivalue.dat') ! for showing pi value with the shotting number
	
do 11 i=1,point
       
	x=grnd()
	y=grnd()

!	  r=sqrt(x**2.+y**2.)
!        rsq=x**2.+y**2.

    rsq=x*x+y*y

        if (rsq.le.1.) then          
	       dot_inside=dot_inside+1. !the dot inside the circle
	    endif
		
	   if(Mod(i,100) .eq.0) then ! we don't want to output each iteration	
	      pi=4.*dot_inside/dble(i)	!evaluating the pi value
          write(2,*) i,pi
          write(*,*) i,pi		  
        endif	
11    continue

close(1)


stop 
end 