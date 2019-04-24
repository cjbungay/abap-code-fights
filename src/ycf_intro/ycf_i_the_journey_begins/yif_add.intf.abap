interface YIF_ADD
  public.

  methods add
    importing i_param1 type i
              i_param2 type i
    returning value(r_output) type i.
endinterface.
