CLASS lhc_InvoiceDet DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_authorizations FOR AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR InvoiceDet RESULT result.

ENDCLASS.

CLASS lhc_InvoiceDet IMPLEMENTATION.

  METHOD get_authorizations.
  ENDMETHOD.

ENDCLASS.
