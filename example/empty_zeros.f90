program main
    use forlab, only: empty, zeros, disp
    implicit none
    real, allocatable :: x(:, :)

    x = empty(2, 3)
    call disp(x, 'empty x:')

    x = zeros(2, 3)
    call disp(x, 'zeros x:')

end program
