@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds view for Invoice Details'
define root view entity ZI_QEN_CDS
  as select from zdel_inv_data

{

  key accountid      as Accountid,
  key proj_id        as ProjId,
  key associd        as Associd,
      account_name   as AccountName,
      proj_name      as ProjName,
      assoc_name     as AssocName,
      bdm_name       as BdmName,
      del_man_name   as DelManName,
      posow          as Posow,
      assoc_role     as AssocRole,
      location       as Location,
      bill_from      as BillFrom,
      bill_to        as BillTo,
      bill_hours     as BillHours,
      bill_rate      as BillRate,
      @Semantics.amount.currencyCode: 'InvCurr'
      total_amount   as TotalAmount,
      @Semantics.amount.currencyCode: 'InvCurr'
      invoice_amount as InvoiceAmount,
      inv_curr       as InvCurr,
      status         as Status,
      run_date       as RunDate
}
