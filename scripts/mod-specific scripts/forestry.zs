import crafttweaker.item.IItemStack;
//disable forestry farms
val itemsToDisable =[
  <forestry:ffarm:*>,
  <forestry:arboretum:*>,
  <forestry:farm_crops:*>,
  <forestry:farm_mushroom:*>,
  <forestry:farm_gourd:*>,
  <forestry:farm_nether:*>,
  <forestry:farm_ender:*>,
  <forestry:peat_bog:*>,
] as IItemStack[];  //note: Disabled to encourage more complex farms
scripts.functions.disableItems(itemsToDisable);

//Foresty log piles
recipes.removeShaped(<forestry:wood_pile>);
recipes.addShaped(<forestry:wood_pile>,
[[<ore:logWood>,<ore:string>,<ore:logWood>],
[<ore:string>,<ore:string>,<ore:string>],
[<ore:logWood>,<ore:string>,<ore:logWood>]]);

//Turn ash and menril crystals into Forestry fertilizer
recipes.addShaped("menril_to_fertilizer", <forestry:fertilizer_compound> * 16, 
	[[<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>], 
	 [<ore:dustAsh>, <integrateddynamics:crystalized_menril_chunk>, <ore:dustAsh>], 
	 [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>]]);