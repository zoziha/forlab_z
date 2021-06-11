submodule(forlab) forlab_var
    !! Version: experimental
    !!
    !!## var
    !! `var` computes vector and matrix variances.
    !!
    !!### Syntax
    !!    y = var(x)
    !!    y = var(x, w)
    !!    x = var(A)
    !!    x = var(A, w)
    !!    x = var(A, 1)
    !!    x = var(A, w, 1)
    !!    x = var(A, 2)
    !!    x = var(A, w, 2)
    !!
    !!### Description
    !! `y = var(x)` returns the variance of the vector `x`.
    !!
    !! `y = var(x, w)` returns the variance of the vector `x` with the
    !! normalization option w.
    !!   -   `0` (default) normalize by `N-1`,
    !!   -   `1` normalize by `N`.
    !!
    !! `x = var(A)` returns a `dim2` vector with the variances of each column of
    !! matrix A.
    !!
    !! `x = var(A, w)` returns a `dim2` vector with the normalization option `w`.
    !!
    !! `x = var(A, 1)` (see `x = var(A)`).
    !!
    !! `w = var(A, w, 1)` (see `x = var(A, w)`)
    !!
    !! `x = var(A, 2)` returns a `dim1` vector with the variances of each row of
    !! matrix A.
    !!
    !! `x = var(A, w, 2)` returns a dim1 vector with the normalization option
    !! `w`.
    use forlab_kinds
    implicit none

contains
    module procedure var_1_sp
        integer :: opt_w

        opt_w = 0
        if (present(w)) opt_w = w

        select case (opt_w)
        case (0)
            var_1_sp = sum((x - mean(x))**2)/(size(x) - 1)
        case (1)
            var_1_sp = sum((x - mean(x))**2)/size(x)
        end select
        return
    end procedure

    module procedure var_2_sp
        integer :: opt_w, i, m, n

        opt_w = 0
        if (present(w)) opt_w = w

        m = size(A, 1)
        n = size(A, 2)
        if ((.not. present(dim)) .or. (dim == 1)) then
            allocate (var_2_sp(n))
            do i = 1, n
                var_2_sp(i) = var_1_sp(A(:, i), opt_w)
            end do
        elseif (dim == 2) then
            allocate (var_2_sp(m))
            do i = 1, m
                var_2_sp(i) = var_1_sp(A(i, :), opt_w)
            end do
        end if
    end procedure
    module procedure var_1_dp
        integer :: opt_w

        opt_w = 0
        if (present(w)) opt_w = w

        select case (opt_w)
        case (0)
            var_1_dp = sum((x - mean(x))**2)/(size(x) - 1)
        case (1)
            var_1_dp = sum((x - mean(x))**2)/size(x)
        end select
        return
    end procedure

    module procedure var_2_dp
        integer :: opt_w, i, m, n

        opt_w = 0
        if (present(w)) opt_w = w

        m = size(A, 1)
        n = size(A, 2)
        if ((.not. present(dim)) .or. (dim == 1)) then
            allocate (var_2_dp(n))
            do i = 1, n
                var_2_dp(i) = var_1_dp(A(:, i), opt_w)
            end do
        elseif (dim == 2) then
            allocate (var_2_dp(m))
            do i = 1, m
                var_2_dp(i) = var_1_dp(A(i, :), opt_w)
            end do
        end if
    end procedure
    module procedure var_1_qp
        integer :: opt_w

        opt_w = 0
        if (present(w)) opt_w = w

        select case (opt_w)
        case (0)
            var_1_qp = sum((x - mean(x))**2)/(size(x) - 1)
        case (1)
            var_1_qp = sum((x - mean(x))**2)/size(x)
        end select
        return
    end procedure

    module procedure var_2_qp
        integer :: opt_w, i, m, n

        opt_w = 0
        if (present(w)) opt_w = w

        m = size(A, 1)
        n = size(A, 2)
        if ((.not. present(dim)) .or. (dim == 1)) then
            allocate (var_2_qp(n))
            do i = 1, n
                var_2_qp(i) = var_1_qp(A(:, i), opt_w)
            end do
        elseif (dim == 2) then
            allocate (var_2_qp(m))
            do i = 1, m
                var_2_qp(i) = var_1_qp(A(i, :), opt_w)
            end do
        end if
    end procedure
end submodule
