class YCL_ADD_TEST_AU definition for testing
  INHERITING FROM cl_aunit_assert
  RISK LEVEL HARMLESS
  DURATION SHORT.

public section.
protected section.
private section.
    data m_cut type ref to yif_add.

    methods setup.

    methods add_positives FOR TESTING RAISING cx_static_check.
    methods add_negatives FOR TESTING RAISING cx_static_check.
    methods add_pos_neg_eq_positive FOR TESTING RAISING cx_static_check.
    methods add_pos_neg_eq_negative FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS YCL_ADD_TEST_AU IMPLEMENTATION.
    method setup.
        "given
        m_cut = new ycl_add_factory( )->create_object( |YCL_ADD_{ sy-uname }| ).
    endmethod.

    method add_positives.
        "when
        data(result) = m_cut->add( i_param1 = 2 i_param2 = 3 ).

        "then
        assert_equals(
            act = result
            exp = 5 ).
    endmethod.

    method add_negatives.
        "when
        data(result) = m_cut->add( i_param1 = -2 i_param2 = -3 ).

        "then
        assert_equals(
            act = result
            exp = -5 ).
    endmethod.

    method add_pos_neg_eq_positive.
        "when
        data(result) = m_cut->add( i_param1 = -2 i_param2 = 3 ).

        "then
        assert_equals(
            act = result
            exp = 1 ).
    endmethod.

    method add_pos_neg_eq_negative.
        "when
        data(result) = m_cut->add( i_param1 = 2 i_param2 = -3 ).

        "then
        assert_equals(
            act = result
            exp = -1 ).
    endmethod.
ENDCLASS.
