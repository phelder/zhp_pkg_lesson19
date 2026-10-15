@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZONLINESHOP_HP'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_ONLINESHOP_HP
  as select from zonlineshop_hp
{
  key order_uuid as OrderUUID,
  ordereditem as Ordereditem,
  
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
