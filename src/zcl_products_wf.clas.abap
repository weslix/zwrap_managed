CLASS zcl_products_wf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_products_wf IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    TYPES: tt_products TYPE TABLE OF zwrap_product WITH DEFAULT KEY.

    DELETE FROM zwrap_product.  "FROM TABLE @lt_products.

    DATA(lt_products) = VALUE tt_products(
        ( matnr = '000000000000000001' description = 'Celular'   language = 'P' )
        ( matnr = '000000000000000002' description = 'Televisão'   language = 'P' )
        ( matnr = '000000000000000003' description = 'Computador'   language = 'P' )
        ( matnr = '000000000000000001' description = 'Phone'   language = 'E' )
        ( matnr = '000000000000000002' description = 'Television'   language = 'E' )
        ( matnr = '000000000000000003' description = 'Computer'   language = 'E' )
    ).

    MODIFY zwrap_product FROM TABLE @lt_products.

    IF sy-subrc = 0.
      out->write( 'Produtos Inseridos com sucesso!' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
