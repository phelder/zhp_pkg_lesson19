@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZONLINESHOP_HP'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_ONLINESHOP_HP
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ONLINESHOP_HP
  association [1..1] to ZR_ONLINESHOP_HP as _BaseEntity on $projection.ORDERUUID = _BaseEntity.ORDERUUID
{
  key OrderUUID,
  Ordereditem,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
