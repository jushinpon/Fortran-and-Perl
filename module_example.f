c      Module example ! only use for claiming parameters
c      IMPLICIT REAL*8(A-H,O-Z)

c	real*8 :: A(3,3),X(3,1),B(3,1),inA(3,3)
c      common /matrix/A,X,B,inA ! store in the same place in RAM

c	endmodule


      Module solve ! only use for claiming parameters      
      IMPLICIT REAL*8(A-H,O-Z)

	real*8 :: A(3,3),X(3,1),B(3,1),inA(3,3)
c*********all subroutines in module can use these parameters without claim in advance.      


	contains
      subroutine Get_Answer1

      USE IMSL 

      IMPLICIT REAL*8(A-H,O-Z)

      inA = .i. A
	

	write(*,*)"**THE INVERSE MATRIX MULTIPLYING THE ORIGINAL ONE IS**"
	
      write(*,*)inA .x. A ! 
      
      write(*,*)
	write(*,*)"*** INVERSE MATRIX***"

      write(*,*)inA	

	X=inA .x. B

      return
	end subroutine Get_Answer1


	endmodule

C*******************************************************************

	program module_linearalgebra

      use solve   !module name 
      IMPLICIT REAL*8(A-H,O-Z)	
	!questio:
	
	!3x+2y+z=13
	!x+y+2z=7    ----> A*X=B  A**(-1)*B=X
	!2x+3y-z=12	
	
c	real*8 :: A(3,3),X(3,1),B(3,1),inA(3,3)
c      common /matrix/A,X,B,inA ! store in the same place in RAM*******************
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

	
	call Get_Answer1 ! use commom or module type to transfer data

c	call Get_Answer_tranfer(A,B,X)
c	call Get_Answer_tranfer_change(A,B,X)
	
	write(*,*)
	write(*,*)"**ANSWER**"

	write(*,*)X


      stop
	end


	