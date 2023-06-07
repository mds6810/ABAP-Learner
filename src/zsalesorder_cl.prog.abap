*&---------------------------------------------------------------------*
*& Report ZSALESORDER_CL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsalesorder_cl.

PARAMETERS : Pa_vbeln TYPE vbeln.

DATA(lc_obj) = NEW zcl_sales_order( ).

lc_obj->display(
  EXPORTING
    p_vbeln     =      pa_vbeln            " Sales and Distribution Document Number
  IMPORTING
    p_erdat     =  DATA(ev_erdat)                " Date on which the record was created
    p_vbtyp     =  DATA(ev_vbtyp)                " SD document category
    p_auart     =  DATA(ev_auart)                 " Sales Document Type
  EXCEPTIONS
    wrong_input = 1                " Wrong Input
    OTHERS      = 2
).
IF sy-subrc <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
  MESSAGE e000(zmsg).

ELSE.
  WRITE : / ev_erdat , / ev_vbtyp, / ev_auart.
ENDIF.
