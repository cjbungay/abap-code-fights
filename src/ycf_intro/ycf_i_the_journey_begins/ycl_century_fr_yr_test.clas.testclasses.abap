class YCL_CENTURY_FR_YR_TEST_AU definition for testing
  INHERITING FROM cl_aunit_assert
  RISK LEVEL HARMLESS
  DURATION SHORT.

public section.
protected section.
private section.
    data m_cut type ref to yif_century_from_year.

    methods setup.

    methods year_1988 FOR TESTING RAISING cx_static_check.
    methods year_2000 FOR TESTING RAISING cx_static_check.
    methods year_2001 FOR TESTING RAISING cx_static_check.
    methods year_200 FOR TESTING RAISING cx_static_check.
    methods year_374 FOR TESTING RAISING cx_static_check.
    methods year_45 FOR TESTING RAISING cx_static_check.
    methods year_8 FOR TESTING RAISING cx_static_check.

ENDCLASS.

CLASS YCL_CENTURY_FR_YR_TEST_AU IMPLEMENTATION.
    method setup.
        "given
        m_cut ?= new ycl_code_fight_factory( )->create_object( |YCL_CENTURY_FR_YR_{ sy-uname }| ).
    endmethod.

    method year_1988.
        "when
        data(result) = m_cut->century_from_year( 1988 ).

        "then
        assert_equals(
            act = result
            exp = 20 ).
    endmethod.

    method year_2000.
        "when
        data(result) = m_cut->century_from_year( 2000 ).

        "then
        assert_equals(
            act = result
            exp = 20 ).
    endmethod.

    method year_2001.
        "when
        data(result) = m_cut->century_from_year( 2001 ).

        "then
        assert_equals(
            act = result
            exp = 21 ).
    endmethod.

    method year_200.
        "when
        data(result) = m_cut->century_from_year( 200 ).

        "then
        assert_equals(
            act = result
            exp = 2 ).
    endmethod.

    method year_374.
        "when
        data(result) = m_cut->century_from_year( 374 ).

        "then
        assert_equals(
            act = result
            exp = 4 ).
    endmethod.

    method year_45.
        "when
        data(result) = m_cut->century_from_year( 45 ).

        "then
        assert_equals(
            act = result
            exp = 1 ).
    endmethod.

    method year_8.
        "when
        data(result) = m_cut->century_from_year( 8 ).

        "then
        assert_equals(
            act = result
            exp = 1 ).
    endmethod.
ENDCLASS.
