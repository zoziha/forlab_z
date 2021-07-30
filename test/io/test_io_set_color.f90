program test_io_set_color

    use forlab_io, only: set_color, disp
    use iso_fortran_env, only: compiler_version

    do i = 2, 4
        call set_color(i)
        call disp(compiler_version())
    end do
    call set_color(-1)

end program test_io_set_color
