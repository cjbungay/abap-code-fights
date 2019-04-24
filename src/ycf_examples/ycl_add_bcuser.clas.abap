class YCL_ADD_BCUSER definition
  public
  final
  create public .

public section.
    interfaces yif_add.

    aliases add for yif_add~add.
protected section.
private section.
ENDCLASS.



CLASS YCL_ADD_BCUSER IMPLEMENTATION.
    method add.
        r_output = i_param1 + i_param2.
    endmethod.
ENDCLASS.
