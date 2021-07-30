submodule(forlab_linalg) forlab_linalg_seq

    implicit none

contains

    !> Make a seq of `real(sp)` type
    module procedure seq_r_sp

        integer :: i

        if (start <= end) then
            result = start + by*real([(i-1,i=1,size(result))],sp) 
        else
            result = start - by*real([(i-1,i=1,size(result))],sp) 
        end if

    end procedure seq_r_sp
    !> Make a seq of `real(dp)` type
    module procedure seq_r_dp

        integer :: i

        if (start <= end) then
            result = start + by*real([(i-1,i=1,size(result))],dp) 
        else
            result = start - by*real([(i-1,i=1,size(result))],dp) 
        end if

    end procedure seq_r_dp
    !> Make a seq of `real(qp)` type
    module procedure seq_r_qp

        integer :: i

        if (start <= end) then
            result = start + by*real([(i-1,i=1,size(result))],qp) 
        else
            result = start - by*real([(i-1,i=1,size(result))],qp) 
        end if

    end procedure seq_r_qp

    !> Make a seq of `integer(int8)` type
    pure module function seq_i_int8(start, end, by) result(result)
        implicit none
        integer(int8), intent(in) :: start, end, by
        integer(int8) :: result(max(int(abs(start - end)/by + 1), 0))

        integer :: i

        if (start <= end) then
            result = [(i, i=start, end, by)]
        else
            result = [(i, i=start, end, -by)] 
        end if

    end function seq_i_int8
    !> Make a seq of `integer(int16)` type
    pure module function seq_i_int16(start, end, by) result(result)
        implicit none
        integer(int16), intent(in) :: start, end, by
        integer(int16) :: result(max(int(abs(start - end)/by + 1), 0))

        integer :: i

        if (start <= end) then
            result = [(i, i=start, end, by)]
        else
            result = [(i, i=start, end, -by)] 
        end if

    end function seq_i_int16
    !> Make a seq of `integer(int32)` type
    pure module function seq_i_int32(start, end, by) result(result)
        implicit none
        integer(int32), intent(in) :: start, end, by
        integer(int32) :: result(max(int(abs(start - end)/by + 1), 0))

        integer :: i

        if (start <= end) then
            result = [(i, i=start, end, by)]
        else
            result = [(i, i=start, end, -by)] 
        end if

    end function seq_i_int32
    !> Make a seq of `integer(int64)` type
    pure module function seq_i_int64(start, end, by) result(result)
        implicit none
        integer(int64), intent(in) :: start, end, by
        integer(int64) :: result(max(int(abs(start - end)/by + 1), 0))

        integer :: i

        if (start <= end) then
            result = [(i, i=start, end, by)]
        else
            result = [(i, i=start, end, -by)] 
        end if

    end function seq_i_int64

end submodule forlab_linalg_seq
