program test_linalg_ex
    use forlab_io, only: disp
    use forlab_linalg, only: ex
    implicit none
    
    call disp(ex(1,2,2),"ex test 1 :")
    call disp(ex(1.0,2),"ex test 2 :")
    call disp(ex(0.0,1,2),"ex test 3 :")
    
end program test_linalg_ex