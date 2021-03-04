      include 'mt19937.f'
	
	program rand_test

      USE mt19937	 
      implicit real*8(a-h,o-z)
      integer seed
      seed = 19872
	
      
      CALL init_genrand(seed)
      do i=1,1000
	 test=grnd()
	 write(*,*)' i = ',i, " random number = ",test
	enddo

c     for a random generator with the value between -1 and 1: (2*grnd()-1)


	end

c	Quiz:1. Make a subroutine for obtaining the random number array with a total of 300000 random numbers and then get the probability distribution. 
C     What do you find after you get the distribution?