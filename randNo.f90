include 'mt19937.f'      
program montecarlo_pi
  
use mt19937
implicit real*8(A-H,O-Z)

integer i,seed,point
real*8 x
  
 
seed = 3419872 ! random number initial seed, you need to use your own
point = 100

CALL init_genrand(seed) !it is a subroutine in module mt19937,activate the grnd()

open(1,file='Rand_value.dat') ! for showing pi value with the shotting number
	
do 11 i=1,point
    x = rand()
	!x = 2.*rand() - 1.
	! x = int(100.*rand()) + 1. ! int(): convert real to integer  
	
	write(*,*) i,x	  
    write(1,*) i,x	  	
11    continue

close(1)


stop 
end 