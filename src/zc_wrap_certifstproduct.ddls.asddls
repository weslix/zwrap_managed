@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_WRAP_CERTIFSTPRODUCT
  as projection on ZI_WRAP_CERTIFSTPRODUCT
{
  key StateUuid,
      CertUuid,
      Matnr,
      Description,
      Version,
      Status,
      StatusOld,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Certif : redirected to parent ZC_WRAP_CERTIFPRODUCT
}
