class YCL_ADD_FACTORY definition
  public
  final
  create public.

public section.
    methods create_object importing i_class type string
                    returning value(r_object) type ref to yif_add.
protected section.
private section.
ENDCLASS.



CLASS YCL_ADD_FACTORY IMPLEMENTATION.
    method create_object.
        create object r_object type (i_class).
    endmethod.
ENDCLASS.
