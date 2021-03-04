MODULE grade_convertor_module
implicit none
Real*8:: English(10000),bin
Character CEng(10000)
Integer i,Id(10000),binNo,binCounter(100),stuNo 
Integer lower_bound,upper_bound,j
common English,CEng,stuNO



contains
!*********************************************
subroutine grade_convertor 

do 13 i=1,stuNo
   if(English(i).ge.90)then
     CEng(i)="A"
   elseif(English(i).ge.80.and.English(i).lt.90)then
     CEng(i)="B"
   elseif(English(i).ge.70.and.English(i).lt.80)then
     CEng(i)="C"	  
   elseif(English(i).ge.60.and.English(i).lt.70)then
     CEng(i)="D" 
   else
     CEng(i)="Fail"
   endif
13  continue
return !!!!!! need to return to main program
endsubroutine grade_convertor
	 
ENDMODULE
