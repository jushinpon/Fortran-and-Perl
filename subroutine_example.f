	program sub_linearalgebra
      

      IMPLICIT REAL*8(A-H,O-Z)	
	!questio:
	
	!3x+2y+z=13
	!x+y+2z=7    ----> A*X=B  A**(-1)*B=X
	!2x+3y-z=12	
	
	real*8 :: A(3,3),X(3,1),B(3,1),inA(3,3)
      common /matrix/A,X,B,inA ! store in the same place in RAM
      A(1,1)=3.d0
      A(2,1)=1.d0
      A(3,1)=2.d0
	A(1,2)=2.d0
	A(2,2)=1.d0
	A(3,2)=3.d0
      A(1,3)=1.d0
	A(2,3)=2.d0
	A(3,3)=-1.d0

	B(1,1)=13.d0
      B(2,1)=7.d0
	B(3,1)=12.d0

	
c	call Get_Answer ! use commom or module type to transfer data

c	call Get_Answer_tranfer(A,B,X)
c	call Get_Answer_tranfer_change(A,B,X)
	
	write(*,*)
	write(*,*)"**ANSWER**"

	write(*,*)X


      stop
	end


	subroutine Get_Answer
      USE IMSL 

      IMPLICIT REAL*8(A-H,O-Z)
      real*8 :: A(3,3),X(3,1),B(3,1),inA(3,3)
      common /matrix/A,X,B,inA

      inA = .i. A
	

	write(*,*)"**THE INVERSE MATRIX MULTIPLYING THE ORIGINAL ONE IS**"
	
      write(*,*)inA .x. A ! 
      
      write(*,*)
	write(*,*)"*** INVERSE MATRIX***"

      write(*,*)inA	

	X=inA .x. B

      return
	end

      subroutine Get_Answer_tranfer(A,B,X)
      USE IMSL 

      IMPLICIT REAL*8(A-H,O-Z)
      real*8 :: A(3,3),X(3,1),B(3,1),inA(3,3)
      

      inA = .i. A
	

	write(*,*)"**THE INVERSE MATRIX MULTIPLYING THE ORIGINAL ONE IS**"
	
      write(*,*)inA .x. A ! 
      
      write(*,*)
	write(*,*)"*** INVERSE MATRIX***"

      write(*,*)inA	

	X=inA .x. B

      return
	end

      subroutine Get_Answer_tranfer_change(A1,B1,X1)
      USE IMSL 

      IMPLICIT REAL*8(A-H,O-Z)
      real*8 :: A1(3,3),X1(3,1),B1(3,1),inA(3,3)
      

      inA = .i. A1
	

	write(*,*)"**THE INVERSE MATRIX MULTIPLYING THE ORIGINAL ONE IS**"
	
      write(*,*)inA .x. A1 ! 
      
      write(*,*)
	write(*,*)"*** INVERSE MATRIX***"

      write(*,*)inA	

	X1=inA .x. B1

      return
	end
