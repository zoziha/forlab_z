program test_linalg_seq
    
    use forlab_linalg, only: seq
    use forlab_io, only: disp
    implicit none

    call disp(seq(1.0, 10.0, 1.0), "seq test 1 :")
    call disp(seq(1.0, 10.0, -1.0), "seq test 2 :")
    call disp(seq(-1.0, -10.0, 1.0), "seq test 3 :")
    call disp(seq(-1.0, -10.0, -1.0), "seq test 4 :")

    call disp(seq(1.0, 2.0, 1.0), "seq test 1 :")
    call disp(seq(1.0, 1.0, 1.0), "seq test 2 :")
    call disp(seq(1.0, -1.0, 1.0), "seq test 3 :")

    call disp(seq(1.0_8, 2.0_8, 1.0_8), "seq test 1 :")
    call disp(seq(1.0_16, 2.0_16, 1.0_16), "seq test 2 :")

    call disp(seq(1, 2, 3), "seq test 1 :")
    
end program test_linalg_seq