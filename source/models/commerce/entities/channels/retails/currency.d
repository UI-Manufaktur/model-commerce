module models.commerce.channels.retails.currency;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCurrency : DOOPEntity {
  mixin(EntityThis!("OPTRetailChannelCurrency"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Channel": StringAttribute, // 
        "CurrencyCode": StringAttribute, // 
        "OMOperatingUnitNumber": NumberAttribute, // 
        "OMOperatingUnitId": UUIDAttribute, // 
        "backingTable_RetailChannelCurrencyRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("commerce_retailchannelcurrencies");
  }
}
mixin(EntityCalls!("OPTRetailChannelCurrency"));

version(test_model_commerce) {
  unittest {
    assert(OPTRetailChannelCurrency);

  auto entity = OPTRetailChannelCurrency;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
