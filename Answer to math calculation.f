      Program main

      Integer i
	Real*8 A,B,C,Increment

      open(10, file='data.dat',status= 'unknown')
      Increment = 0.001
      
      do 11 i =1,10000
        x=Increment*(dble(i)-1.)
        A = sin(x)
c        A = exp(x)

	  write(10,*)x,A
11    continue
 
	close(10)

	end