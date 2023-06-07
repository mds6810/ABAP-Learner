class ZCL_SALES_ORDER definition
  public
  final
  create public .

public section.

  methods DISPLAY
    importing
      !P_VBELN type VBELN
    exporting
      !P_ERDAT type ERDAT
      !P_VBTYP type VBTYP
      !P_AUART type AUART
    exceptions
      WRONG_INPUT .
protected section.
private section.
ENDCLASS.



CLASS ZCL_SALES_ORDER IMPLEMENTATION.


  method DISPLAY.
    select single erdat, vbtyp, auart FROM vbak
      into (@p_erdat, @p_vbtyp, @p_auart)
      WHERE vbeln = @p_vbeln.
      IF sy-subrc <> 0.
        RAISE wrong_input.

      ENDIF.
  endmethod.
ENDCLASS.
