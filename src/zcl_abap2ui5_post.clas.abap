CLASS zcl_abap2ui5_post DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_serializable_object .
    INTERFACES z2ui5_if_app.

    DATA : user TYPE string,
           date TYPE string,
           text_data TYPE string VALUE 'App executed on'.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_abap2ui5_post IMPLEMENTATION.
  METHOD z2ui5_if_app~main.
    "event handling
    CASE client->get(  )-event.
      WHEN 'BUTTON_POST'.

        client->popup_message_toast( |{ 'App executed on ' } { date } { 'by' } { user } - send to the server| ).
    ENDCASE.

    "view rendering
    client->set_next( value #( xml_main = z2ui5_cl_xml_view=>factory(
              )->page( title = 'SAP Developer Code Challenge – Open-Source ABAP (Week 2)'
              )->simple_form( title = 'Form Title' editable = abap_true
              )->content( 'form'
              )->title( 'Input'
              )->label( 'user'
              )->input( client->_bind( user )
              )->label( 'date'
              )->date_picker( client->_bind( date )
              )->button( text = 'Post' press = client->_event( 'BUTTON_POST' )
              )->get_root(  )->xml_get(  ) ) ).
  ENDMETHOD.

ENDCLASS.
