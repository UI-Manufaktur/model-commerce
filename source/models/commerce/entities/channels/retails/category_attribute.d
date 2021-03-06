module models.commerce.channels.retails.category_attribute;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCategoryAttribute : DOOPEntity {
  mixin(EntityThis!("OPTRetailChannelCategoryAttribute"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "RetailChannelId": UUIDAttribute, // 
        "ProductCategoryHierarchyName": StringAttribute, // 
        "ProductCategoryName": StringAttribute, // 
        "AttributeName": StringAttribute, // 
        "AttributeTypeName": StringAttribute, // 
        "Relationship_ChannelRelationshipId": UUIDAttribute, // 
        "Relationship_ProductCategoryRelationshipId": UUIDAttribute, // 
        "Relationship_AttributeRelationshipId": UUIDAttribute, // 
        "backingTable_RetailChannelCategoryAttributeRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("commerce_retailchannelcategoryattributes");
  }
}
mixin(EntityCalls!("OPTRetailChannelCategoryAttribute"));

version(test_library) {
  unittest {
    assert(OPTRetailChannelCategoryAttribute);

  auto entity = OPTRetailChannelCategoryAttribute;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
