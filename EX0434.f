      program  ex0434
      implicit none
      ! 開始建立person這個型態
	! some errors in the original code.
      type :: person 
      character(len=30) :: name ! 人名
      integer  ::  age          ! 年齡
      integer  ::  height       ! 身高			
      integer  ::  weight       ! 體重
      character(len=80) :: address ! 地址
      end type person

      type(person) :: a ! 宣告一個person型態的變數

      write(*,*) "NAME:"
      read(*,*)  a%name 
      write(*,*) "AGE:"
      read(*,*)  a%age
      write(*,*) "HEIGHT:"
      read(*,*)  a%height
      write(*,*) "WEIGHT:"
      read(*,*)  a%weight
      write(*,*) "ADDRESS:"
      read(*,"(A80)") a%address

      write(*,100) a%name,a%age,a%height,a%weight,a%address
100   format("Name:",A10/,"Age:",I3/,"Height:",I3/,"Weight:",I3/,
     &    "Addres:",A50)
    
      stop
      end
      
	! 1.Please modify it to read-in data from a file!
	! 2. Read-in for a list with more than 6 people or the number you assign. Hint: do-loop


