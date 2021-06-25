submodule(forlab) forlab_disp
    !! Version: experimental
    !!
    !! disp displays the value of a variable.
    !!
    !!## Syntax
    !!    call disp(string)
    !!    call disp(x)
    !!    call disp(x, string)
    !!    call disp(A)
    !!    call disp(A, string)
    !!    call disp(X)
    !!    call disp(X, 1)
    !!    call disp(X, 1, string)
    !!    call disp(X, 2)
    !!    call disp(X, 2, string)
    !!    call disp(X, 3)
    !!    call disp(X, 3, string)
    !!
    !!## Description
    !! `call disp(x)` displays the scalar or the vector x.
    !!
    !! `call disp(x, string)` displays the scalar or the vector x preceded by
    !! string.
    !!
    !! `call disp(A)` displays the matrix A.
    !!
    !! `call disp(A, string)` displays the matrix A preceded by string.
    !!
    !! `call disp(X)` displays the 3-dimensional matrix X along the axis 1.
    !!
    !! `call disp(X, 1)` (see `call disp(X)`).
    !!
    !! `call disp(X, 1, string)` displays the 3-dimensional matrix X along the
    !! axis 1 preceded by string.
    !!
    !! `call disp(X, 2)` displays the 3-dimensional matrix X along the axis 2.
    !!
    !! `call disp(X, 2, string)` displays the 3-dimensional matrix X along the
    !! axis 2 preceded by string.
    !!
    !! `call disp(X, 3)` displays the 3-dimensional matrix X along the axis 3.
    !!
    !! `call disp(X, 3, string)` displays the 3-dimensional matrix X along the
    !! axis 3 preceded by string.
    !!
    !!## Examples
    !!    x = [ 1. 2. 3. ]
    !!    call disp(x)
    !!        1.
    !!        2.
    !!        3.
    !!    call disp(x, "x = ")
    !!        x =
    !!            1.
    !!            2.
    !!            3.
    !!
    !!    A = reshape([ 1., 2., 3., 4., 5., 6., 7., 8., 9. ], [ 3, 3 ], &
    !!                order = [ 2, 1 ])
    !!    call disp(A, "Matrix A is")
    !!        Matrix A is
    !!            1.  2.  3.
    !!            4.  5.  6.
    !!            7.  8.  9.
    use forlab_kinds
    implicit none

    real(sp), parameter :: nearzero_sp = 1.0e-10_sp
    real(dp), parameter :: nearzero_dp = 1.0e-10_dp
    real(qp), parameter :: nearzero_qp = 1.0e-10_qp
    character(len=*), parameter :: fmt_r = "( *( g11.4, 1x ) )"
    character(len=*), parameter :: fmt_c = "( *( g23.4, 1x ) )"

    interface filter
        procedure filter_sp
        procedure filter_dp
        procedure filter_qp
    end interface
contains

    module procedure disp_rsp0
        if (present(string)) print *, trim(string)
        print fmt_r, filter(x)
        return
    end procedure

    module procedure disp_rsp1
        integer :: i, m

        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_r, (filter(x(i)), i=1, m)

        return
    end procedure

    module procedure disp_rsp2
        integer :: i, j, m, n

        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_r, (filter(A(i, j)), j=1, n)
        end do
        return
    end procedure

    module procedure disp_rsp3
        integer :: i, dim1, dim2, dim3

        dim1 = size(X, 1)
        dim2 = size(X, 2)
        dim3 = size(X, 3)
        if (present(string)) print *, trim(string)
        if ((.not. present(dim)) .or. (dim .eq. 1)) then
            do i = 1, dim1
                print *, "Slice ("//num2str(i)//",:,:):"
                call disp(X(i, :, :))
            end do
        elseif (dim .eq. 2) then
            do i = 1, dim2
                print *, "Slice (:,"//num2str(i)//",:):"
                call disp(X(:, i, :))
            end do
        elseif (dim .eq. 3) then
            do i = 1, dim3
                print *, "Slice (:,:,"//num2str(i)//"):"
                call disp(X(:, :, i))
            end do
        end if
        return
    end procedure
    module procedure disp_rdp0
        if (present(string)) print *, trim(string)
        print fmt_r, filter(x)
        return
    end procedure

    module procedure disp_rdp1
        integer :: i, m

        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_r, (filter(x(i)), i=1, m)

        return
    end procedure

    module procedure disp_rdp2
        integer :: i, j, m, n

        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_r, (filter(A(i, j)), j=1, n)
        end do
        return
    end procedure

    module procedure disp_rdp3
        integer :: i, dim1, dim2, dim3

        dim1 = size(X, 1)
        dim2 = size(X, 2)
        dim3 = size(X, 3)
        if (present(string)) print *, trim(string)
        if ((.not. present(dim)) .or. (dim .eq. 1)) then
            do i = 1, dim1
                print *, "Slice ("//num2str(i)//",:,:):"
                call disp(X(i, :, :))
            end do
        elseif (dim .eq. 2) then
            do i = 1, dim2
                print *, "Slice (:,"//num2str(i)//",:):"
                call disp(X(:, i, :))
            end do
        elseif (dim .eq. 3) then
            do i = 1, dim3
                print *, "Slice (:,:,"//num2str(i)//"):"
                call disp(X(:, :, i))
            end do
        end if
        return
    end procedure
    module procedure disp_rqp0
        if (present(string)) print *, trim(string)
        print fmt_r, filter(x)
        return
    end procedure

    module procedure disp_rqp1
        integer :: i, m

        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_r, (filter(x(i)), i=1, m)

        return
    end procedure

    module procedure disp_rqp2
        integer :: i, j, m, n

        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_r, (filter(A(i, j)), j=1, n)
        end do
        return
    end procedure

    module procedure disp_rqp3
        integer :: i, dim1, dim2, dim3

        dim1 = size(X, 1)
        dim2 = size(X, 2)
        dim3 = size(X, 3)
        if (present(string)) print *, trim(string)
        if ((.not. present(dim)) .or. (dim .eq. 1)) then
            do i = 1, dim1
                print *, "Slice ("//num2str(i)//",:,:):"
                call disp(X(i, :, :))
            end do
        elseif (dim .eq. 2) then
            do i = 1, dim2
                print *, "Slice (:,"//num2str(i)//",:):"
                call disp(X(:, i, :))
            end do
        elseif (dim .eq. 3) then
            do i = 1, dim3
                print *, "Slice (:,:,"//num2str(i)//"):"
                call disp(X(:, :, i))
            end do
        end if
        return
    end procedure
    module procedure disp_csp0
        print fmt_c, num2str(cmplx(filter(real(x)), filter(imag(x))), '(g11.4)')
        return
    end procedure

    module procedure disp_csp1
        integer :: i, m

        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_c, (num2str(cmplx(filter(real(x(i))), filter(imag(x(i)))), '(g11.4)'), i=1,m)
        return
    end procedure

    module procedure disp_csp2
        integer :: i, j, m, n
        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_c, (num2str(cmplx(filter(real(A(i, j))), filter(imag(A(i, j)))), '(g11.4)'), j=1,n)
        end do
        return
    end procedure
    module procedure disp_cdp0
        print fmt_c, num2str(cmplx(filter(real(x)), filter(imag(x))), '(g11.4)')
        return
    end procedure

    module procedure disp_cdp1
        integer :: i, m

        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_c, (num2str(cmplx(filter(real(x(i))), filter(imag(x(i)))), '(g11.4)'), i=1,m)
        return
    end procedure

    module procedure disp_cdp2
        integer :: i, j, m, n
        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_c, (num2str(cmplx(filter(real(A(i, j))), filter(imag(A(i, j)))), '(g11.4)'), j=1,n)
        end do
        return
    end procedure
    module procedure disp_cqp0
        print fmt_c, num2str(cmplx(filter(real(x)), filter(imag(x))), '(g11.4)')
        return
    end procedure

    module procedure disp_cqp1
        integer :: i, m

        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_c, (num2str(cmplx(filter(real(x(i))), filter(imag(x(i)))), '(g11.4)'), i=1,m)
        return
    end procedure

    module procedure disp_cqp2
        integer :: i, j, m, n
        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_c, (num2str(cmplx(filter(real(A(i, j))), filter(imag(A(i, j)))), '(g11.4)'), j=1,n)
        end do
        return
    end procedure

    module procedure disp_l0
        if (present(string)) print *, trim(string)
        print fmt_r, x
        return
    end procedure

    module procedure disp_l1
        integer :: i, m
        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_r, (x(i), i=1, m)
        return
    end procedure disp_l1

    module procedure disp_l2
        integer :: i, j, m, n
        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_r, (A(i, j), j=1, n)
        end do
        return
    end procedure disp_l2

    module procedure disp_0_int8
        if (present(string)) print *, trim(string)
        print fmt_r, x
        return
    end procedure

    module procedure disp_1_int8
        integer :: i, m
        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_r, (x(i), i=1, m)
        return
    end procedure

    module procedure disp_2_int8
        integer :: i, j, m, n
        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_r, (A(i, j), j=1, n)
        end do
        return
    end procedure

    module procedure disp_3_int8
        integer :: i, dim1, dim2, dim3
        dim1 = size(X, 1)
        dim2 = size(X, 2)
        dim3 = size(X, 3)
        if (present(string)) print *, trim(string)
        if ((.not. present(dim)) .or. (dim .eq. 1)) then
            do i = 1, dim1
                print *, "Slice ("//num2str(i)//",:,:):"
                call disp(X(i, :, :))
            end do
        elseif (dim .eq. 2) then
            do i = 1, dim2
                print *, "Slice (:,"//num2str(i)//",:):"
                call disp(X(:, i, :))
            end do
        elseif (dim .eq. 3) then
            do i = 1, dim3
                print *, "Slice (:,:,"//num2str(i)//"):"
                call disp(X(:, :, i))
            end do
        end if
        return
    end procedure
    module procedure disp_0_int16
        if (present(string)) print *, trim(string)
        print fmt_r, x
        return
    end procedure

    module procedure disp_1_int16
        integer :: i, m
        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_r, (x(i), i=1, m)
        return
    end procedure

    module procedure disp_2_int16
        integer :: i, j, m, n
        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_r, (A(i, j), j=1, n)
        end do
        return
    end procedure

    module procedure disp_3_int16
        integer :: i, dim1, dim2, dim3
        dim1 = size(X, 1)
        dim2 = size(X, 2)
        dim3 = size(X, 3)
        if (present(string)) print *, trim(string)
        if ((.not. present(dim)) .or. (dim .eq. 1)) then
            do i = 1, dim1
                print *, "Slice ("//num2str(i)//",:,:):"
                call disp(X(i, :, :))
            end do
        elseif (dim .eq. 2) then
            do i = 1, dim2
                print *, "Slice (:,"//num2str(i)//",:):"
                call disp(X(:, i, :))
            end do
        elseif (dim .eq. 3) then
            do i = 1, dim3
                print *, "Slice (:,:,"//num2str(i)//"):"
                call disp(X(:, :, i))
            end do
        end if
        return
    end procedure
    module procedure disp_0_int32
        if (present(string)) print *, trim(string)
        print fmt_r, x
        return
    end procedure

    module procedure disp_1_int32
        integer :: i, m
        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_r, (x(i), i=1, m)
        return
    end procedure

    module procedure disp_2_int32
        integer :: i, j, m, n
        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_r, (A(i, j), j=1, n)
        end do
        return
    end procedure

    module procedure disp_3_int32
        integer :: i, dim1, dim2, dim3
        dim1 = size(X, 1)
        dim2 = size(X, 2)
        dim3 = size(X, 3)
        if (present(string)) print *, trim(string)
        if ((.not. present(dim)) .or. (dim .eq. 1)) then
            do i = 1, dim1
                print *, "Slice ("//num2str(i)//",:,:):"
                call disp(X(i, :, :))
            end do
        elseif (dim .eq. 2) then
            do i = 1, dim2
                print *, "Slice (:,"//num2str(i)//",:):"
                call disp(X(:, i, :))
            end do
        elseif (dim .eq. 3) then
            do i = 1, dim3
                print *, "Slice (:,:,"//num2str(i)//"):"
                call disp(X(:, :, i))
            end do
        end if
        return
    end procedure
    module procedure disp_0_int64
        if (present(string)) print *, trim(string)
        print fmt_r, x
        return
    end procedure

    module procedure disp_1_int64
        integer :: i, m
        m = size(x)
        if (present(string)) print *, trim(string)
        print fmt_r, (x(i), i=1, m)
        return
    end procedure

    module procedure disp_2_int64
        integer :: i, j, m, n
        m = size(A, 1)
        n = size(A, 2)
        if (present(string)) print *, trim(string)
        do i = 1, m
            print fmt_r, (A(i, j), j=1, n)
        end do
        return
    end procedure

    module procedure disp_3_int64
        integer :: i, dim1, dim2, dim3
        dim1 = size(X, 1)
        dim2 = size(X, 2)
        dim3 = size(X, 3)
        if (present(string)) print *, trim(string)
        if ((.not. present(dim)) .or. (dim .eq. 1)) then
            do i = 1, dim1
                print *, "Slice ("//num2str(i)//",:,:):"
                call disp(X(i, :, :))
            end do
        elseif (dim .eq. 2) then
            do i = 1, dim2
                print *, "Slice (:,"//num2str(i)//",:):"
                call disp(X(:, i, :))
            end do
        elseif (dim .eq. 3) then
            do i = 1, dim3
                print *, "Slice (:,:,"//num2str(i)//"):"
                call disp(X(:, :, i))
            end do
        end if
        return
    end procedure

    module function filter_sp(x)
        !! Filter near-zero. Note: elemental
        real(sp), intent(in) :: x
        real(sp) :: filter_sp
        filter_sp = x
        if (abs(x) < nearzero_sp) filter_sp = 0.0_sp
    end function
    module function filter_dp(x)
        !! Filter near-zero. Note: elemental
        real(dp), intent(in) :: x
        real(dp) :: filter_dp
        filter_dp = x
        if (abs(x) < nearzero_dp) filter_dp = 0.0_dp
    end function
    module function filter_qp(x)
        !! Filter near-zero. Note: elemental
        real(qp), intent(in) :: x
        real(qp) :: filter_qp
        filter_qp = x
        if (abs(x) < nearzero_qp) filter_qp = 0.0_qp
    end function
    
    module procedure disp_str
        if (present(string)) then
            print *, trim(string)
        else
            print *, ''
        end if
        return
    end procedure
end submodule
