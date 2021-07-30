submodule (forlab_linalg) forlab_linalg_ex
    
    implicit none
    
contains

    pure function ex_1_r_sp(value, dim) result(result)
        
        implicit none
        real(sp), intent(in) :: value
        integer, intent(in) :: dim
        real(sp) :: result(dim)

        result = value
        
    end function ex_1_r_sp

    pure function ex_2_r_sp(value, dim1, dim2) result(result)
        
        implicit none
        real(sp), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        real(sp) :: result(dim1, dim2)

        result = value
        
    end function ex_2_r_sp
    pure function ex_1_r_dp(value, dim) result(result)
        
        implicit none
        real(dp), intent(in) :: value
        integer, intent(in) :: dim
        real(dp) :: result(dim)

        result = value
        
    end function ex_1_r_dp

    pure function ex_2_r_dp(value, dim1, dim2) result(result)
        
        implicit none
        real(dp), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        real(dp) :: result(dim1, dim2)

        result = value
        
    end function ex_2_r_dp
    pure function ex_1_r_qp(value, dim) result(result)
        
        implicit none
        real(qp), intent(in) :: value
        integer, intent(in) :: dim
        real(qp) :: result(dim)

        result = value
        
    end function ex_1_r_qp

    pure function ex_2_r_qp(value, dim1, dim2) result(result)
        
        implicit none
        real(qp), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        real(qp) :: result(dim1, dim2)

        result = value
        
    end function ex_2_r_qp
    pure function ex_1_i_int8(value, dim) result(result)
        
        implicit none
        integer(int8), intent(in) :: value
        integer, intent(in) :: dim
        integer(int8) :: result(dim)

        result = value
        
    end function ex_1_i_int8

    pure function ex_2_i_int8(value, dim1, dim2) result(result)
        
        implicit none
        integer(int8), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        integer(int8) :: result(dim1, dim2)

        result = value
        
    end function ex_2_i_int8
    pure function ex_1_i_int16(value, dim) result(result)
        
        implicit none
        integer(int16), intent(in) :: value
        integer, intent(in) :: dim
        integer(int16) :: result(dim)

        result = value
        
    end function ex_1_i_int16

    pure function ex_2_i_int16(value, dim1, dim2) result(result)
        
        implicit none
        integer(int16), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        integer(int16) :: result(dim1, dim2)

        result = value
        
    end function ex_2_i_int16
    pure function ex_1_i_int32(value, dim) result(result)
        
        implicit none
        integer(int32), intent(in) :: value
        integer, intent(in) :: dim
        integer(int32) :: result(dim)

        result = value
        
    end function ex_1_i_int32

    pure function ex_2_i_int32(value, dim1, dim2) result(result)
        
        implicit none
        integer(int32), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        integer(int32) :: result(dim1, dim2)

        result = value
        
    end function ex_2_i_int32
    pure function ex_1_i_int64(value, dim) result(result)
        
        implicit none
        integer(int64), intent(in) :: value
        integer, intent(in) :: dim
        integer(int64) :: result(dim)

        result = value
        
    end function ex_1_i_int64

    pure function ex_2_i_int64(value, dim1, dim2) result(result)
        
        implicit none
        integer(int64), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        integer(int64) :: result(dim1, dim2)

        result = value
        
    end function ex_2_i_int64
    pure function ex_1_c_sp(value, dim) result(result)
        
        implicit none
        complex(sp), intent(in) :: value
        integer, intent(in) :: dim
        complex(sp) :: result(dim)

        result = value
        
    end function ex_1_c_sp

    pure function ex_2_c_sp(value, dim1, dim2) result(result)
        
        implicit none
        complex(sp), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        complex(sp) :: result(dim1, dim2)

        result = value
        
    end function ex_2_c_sp
    pure function ex_1_c_dp(value, dim) result(result)
        
        implicit none
        complex(dp), intent(in) :: value
        integer, intent(in) :: dim
        complex(dp) :: result(dim)

        result = value
        
    end function ex_1_c_dp

    pure function ex_2_c_dp(value, dim1, dim2) result(result)
        
        implicit none
        complex(dp), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        complex(dp) :: result(dim1, dim2)

        result = value
        
    end function ex_2_c_dp
    pure function ex_1_c_qp(value, dim) result(result)
        
        implicit none
        complex(qp), intent(in) :: value
        integer, intent(in) :: dim
        complex(qp) :: result(dim)

        result = value
        
    end function ex_1_c_qp

    pure function ex_2_c_qp(value, dim1, dim2) result(result)
        
        implicit none
        complex(qp), intent(in) :: value
        integer, intent(in) :: dim1, dim2
        complex(qp) :: result(dim1, dim2)

        result = value
        
    end function ex_2_c_qp

end submodule forlab_linalg_ex