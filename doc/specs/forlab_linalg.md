---
title: LINALG
---

# LINALG

[TOC]

## `diff` - diff computes differences of arrays.

### Status

Experimental

### Description
y = diff(x) returns differences between adjacent elements of vector x.  
y = diff(x, n) returns the nth difference by applying the diff(x) operator recursively n times.  
B = diff(A) returns differences between adjacent elements of array A along the first dimension.  
B = diff(A, n) returns the nth difference by applying the diff(A) operator recursively n times.  
B = diff(A, dim) returns differences between adjacent elements of array A along the dimension given by dim.  
B = diff(A, n, dim) returns the nth difference along the dimension given by dim by applying the diff(A, dim) operator recursively n times.


### Syntax

For vector:  
`result = [[forlab_linalg(module):diff(interface)]](x [, n])`

For matrix:  
`result = [[forlab_linalg(module):diff(interface)]](A [, n, dim])`

### Arguments

`x`: Shall be a `real` type of verctor.
`A`: Shall be a `real` type of matrix.

`n` (optional): Shall be a `integer` type.
`dim` (optional): Shall be a `integer` type.


### Return value

Return differences between adjacent elements of vector `x` or matrix `A`.

### Example

```fortran
program test_linalg_diff
    use forlab_linalg, only: diff
    use forlab_linalg, only: linspace
    use forlab_io, only: disp
    implicit none

    real :: x(10)
    
    call linspace(x, 0.0, 9.0)
    call disp(x, "Linspace(x) : ")
    call disp(diff(x), "Test_linalg_diff : ")
    
    
end program test_linalg_diff
```

## `ex` - ex make a vector or matrix with an expect value.

### Status

Experimental

### Class
Pure function.

### Description
`ex` make a vector or matrix with an expect value.

### Syntax

For vector:  
`result = [[forlab_linalg(module):ex(interface)]](value [, dim])`

For matrix:  
`result = [[forlab_linalg(module):ex(interface)]](value [, dim1, dim2])`

### Arguments

`value`: Shall be a `real/complex/integer` type of scalar.

`dim/dim1`: Shall be a `integer` type.
`dim2`: Shall be a `integer` type.


### Return value

Return an vector or matrix with a same `value`.

### Example

```fortran
program test_linalg_ex

    use forlab_io, only: disp
    use forlab_linalg, only: ex
    implicit none
    
    call disp(ex(1,2,2),"ex test 1 :")
    call disp(ex(1.0,2),"ex test 2 :")
    call disp(ex(0.0,1,2),"ex test 3 :")
    
end program test_linalg_ex
```

## `seq` - seq make a vector with a seq.

### Status

Experimental

### Class
Pure function.

### Description
`seq` make an vector with a seq.

### Syntax

`result = [[forlab_linalg(module):seq(interface)]](start, end, by)`

### Arguments

`start/end/by`: Shall be a `real/integer` type of scalar.

### Return value

Return an vector with a seq from `start` to `end` by `by`.

### Example

```fortran
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
```