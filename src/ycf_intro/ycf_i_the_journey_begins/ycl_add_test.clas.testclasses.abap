class YCL_ADD_TEST_AU definition for testing
  INHERITING FROM cl_aunit_assert
  RISK LEVEL HARMLESS
  DURATION SHORT.

public section.
protected section.
private section.
    data m_cut type ref to yif_add.

    methods setup.

    methods add_p0_p1000 FOR TESTING RAISING cx_static_check.
    methods add_p2_n39 FOR TESTING RAISING cx_static_check.
    methods add_p99_p100 FOR TESTING RAISING cx_static_check.
    methods add_n100_p100 FOR TESTING RAISING cx_static_check.
    methods add_n1000_n1000 FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS YCL_ADD_TEST_AU IMPLEMENTATION.
    method setup.
        "given
        m_cut ?= new ycl_code_fight_factory( )->create_object( |YCL_ADD_{ sy-uname }| ).
    endmethod.

    method add_p0_p1000.
        "when
        data(result) = m_cut->add( i_param1 = 0 i_param2 = 1000 ).

        "then
        assert_equals(
            act = result
            exp = 1000 ).
    endmethod.

    method add_p2_n39.
        "when
        data(result) = m_cut->add( i_param1 = 2 i_param2 = -39 ).

        "then
        assert_equals(
            act = result
            exp = -37 ).
    endmethod.

    method add_p99_p100.
        "when
        data(result) = m_cut->add( i_param1 = 99 i_param2 = 100 ).

        "then
        assert_equals(
            act = result
            exp = 199 ).
    endmethod.

    method add_n100_p100.
        "when
        data(result) = m_cut->add( i_param1 = -100 i_param2 = 100 ).

        "then
        assert_equals(
            act = result
            exp = 0 ).
    endmethod.

    method add_n1000_n1000.
        "when
        data(result) = m_cut->add( i_param1 = -1000 i_param2 = -1000 ).

        "then
        assert_equals(
            act = result
            exp = -2000 ).
    endmethod.
ENDCLASS.
