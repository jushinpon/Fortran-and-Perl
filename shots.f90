program shots
!use aplot
implicit none
    
    integer::n
    real, dimension(:), allocatable::totalshots, goals
    
    ! Arrays for calling LAPACK's SGELS driver
    real, dimension(:,:), allocatable::bdata, adata
    real, dimension(:), allocatable::work
    integer::info
    
    ! A plot for when we're done
  !  type(aplot_t)::p
    integer::i
    real, dimension(:), allocatable::fitdata
    integer::row_shots, row_goals
   
    ! First, load all our data
 !   call loaddata()
 
 
 
        
        open(unit=100, file='nwsl2016.txt', status='old')
        
        ! Two header rows
        read(100, *)
        read(100, *)
        
        ! First number is the number of data points
        read(100, *) n
        
        ! Allocate data arrays
        allocate(totalshots(n), goals(n))
        
        ! Load each data point as integers and re-store
        ! them in our arrays as REAL values
        do i = 1, n
            read(100, *) row_shots, row_goals
            totalshots(i) = real(row_shots)
            goals(i) = real(row_goals)
        end do
        
        close(100)
 
    
    ! The 'n' variable now holds the number of data points,
    ! and our totalshots and goals arrays should be properly
    ! dimensioned and populated.
    
    ! Build arrays for LAPACK calls
    allocate(adata(n,2), bdata(n,1), work(2*n))
    adata(:,1) = 1.0             ! So an intercept is calculated
    adata(:,2) = totalshots      ! Total shots
    bdata(:,1) = goals           ! Goals

    ! Perform a least squares fit - documentation at:
    ! http://www.netlib.org/lapack/explore-html/d0/db8/group__real_g_esolve_gacd49b6b29636a826370633a8856bd3bd.html
    call SGELS('N', &   ! TRANS
               n, &     ! M
               2, &     ! N
               1, &     ! NRHS 
               adata, & ! A
               n, &     ! LDA
               bdata, & ! B
               n, &     ! LDB
               work, &  ! WORK
               2*n, &   ! LWORK
               info)
    
    Print *, "Result (0=success): ", info
    Print *, "Intercept: ", bdata(1,1)
    Print *, "Slope: ", bdata(2,1)

    ! Generate regression data for each totalshots point
!    allocate(fitdata(n))
!    do i = 1, n
!        fitdata(i) = bdata(1,1) + totalshots(i)*bdata(2,1)
!    end do
!    
!    ! Plot the results
!    p = initialize_plot()
!    
!    call add_dataset(p, totalshots, goals)
!    call set_seriestype(p, 0, APLOT_STYLE_DOT)
!    call set_serieslabel(p, 0, "Player Data")
!
!    call add_dataset(p, totalshots, fitdata)
!    call set_seriestype(p, 1, APLOT_STYLE_LINE)
!    call set_serieslabel(p, 1, "Linear Fit")
!    
!    call set_xlabel(p, "Total Shots")
!    call set_ylabel(p, "Goals Scored")
!    
!    call set_title(p, "NWSL 2016: Total Shots vs. Goals Scored")
!    
!    call display_plot(p)
!    call destroy_plot(p)
!
!contains
end
 

!end program shots
