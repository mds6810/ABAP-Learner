@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for Invoice Details'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZC_QEN_CDS
  as projection on ZI_QEN_CDS
{
@EndUserText.label: 'Account ID'
  key Accountid,
@EndUserText.label: 'Project ID'
  key ProjId,
  key Associd,
      AccountName,
      ProjName,
      AssocName,
      BdmName,
      DelManName,
      Posow,
      AssocRole,
      Location,
      BillFrom,
      BillTo,
      BillHours,
      BillRate,
      TotalAmount,
      InvoiceAmount,
      InvCurr,
      Status,
      RunDate
}
