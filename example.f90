program libla
        implicit none
        real:: a(3,3),aa(3,3),b(3)
        integer::v(3),iflag
        external sgesv !调用lapack中的sgesv用来求解 Ax=b 的线性方程组
        ! 2X+Y+3Z = 998
        ! 6X+2y-4Z = 999
        ! 4X+3Y-6Z = 1000

        aa=reshape([2.0,1.0,3.0,6.0,2.0,-4.0,4.0,3.0,-6.0],[3,3])
        a=aa
        b=[998.0,999.0,1000.0]
        write(*,*) 'a=',a
        write(*,*) 'b=',b
        call sgesv(3,1,a,3,v,b,3,iflag)
        write(*,*) 'b solve=',b
       
end program libla
