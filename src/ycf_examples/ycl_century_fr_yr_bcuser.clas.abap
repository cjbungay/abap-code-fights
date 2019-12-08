class YCL_CENTURY_FR_YR_BCUSER definition
  public
  final
  create public .

public section.
    interfaces yif_century_from_year.

    aliases century_from_year for yif_century_from_year~century_from_year.
protected section.
private section.
ENDCLASS.



CLASS YCL_CENTURY_FR_YR_BCUSER IMPLEMENTATION.
    method century_from_year.
        r_output = ( i_year + 99 ) div 100.
    endmethod.
ENDCLASS.
