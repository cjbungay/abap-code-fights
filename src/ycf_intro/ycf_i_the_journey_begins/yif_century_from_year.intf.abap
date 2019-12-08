interface YIF_CENTURY_FROM_YEAR
  public.

  methods century_from_year
    importing i_year type i
    returning value(r_output) type i.
endinterface.
