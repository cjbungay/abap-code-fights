class YCL_CODE_FIGHT_FACTORY definition
  public
  final
  create public.

public section.
    methods create_object importing i_class type string
                    returning value(r_object) type ref to object.
protected section.
private section.
ENDCLASS.



CLASS YCL_CODE_FIGHT_FACTORY IMPLEMENTATION.
    method create_object.
        create object r_object type (i_class).
    endmethod.
ENDCLASS.
