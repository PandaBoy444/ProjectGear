import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Silver chest
  <metalchests:metal_chest:2>,
  // All upgrades that involve silver
  <metalchests:chest_upgrade:2>,
  <metalchests:chest_upgrade:7>,
  <metalchests:chest_upgrade:11>,
  <metalchests:chest_upgrade:15>,
  <metalchests:chest_upgrade:16>,
  <metalchests:chest_upgrade:17>,
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Silver chest
  <metalchests:metal_chest:2>,
  // All upgrades that involve silver
  <metalchests:chest_upgrade:2>,
  <metalchests:chest_upgrade:7>,
  <metalchests:chest_upgrade:11>,
  <metalchests:chest_upgrade:15>,
  <metalchests:chest_upgrade:16>,
  <metalchests:chest_upgrade:17>,
  // Gold chest
  <metalchests:metal_chest:3>,
  // Iron to gold chest upgrade
  <metalchests:chest_upgrade:12>,
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

val ironchest = <metalchests:metal_chest:1>;
val gold = <ore:ingotGold>;
val iron = <ore:ingotIron>;

recipes.addShaped(<metalchests:metal_chest:3>,
	[[gold, gold, gold],
	 [gold, ironchest, gold],
	 [gold, gold, gold]]);
	 
recipes.addShaped(<metalchests:chest_upgrade:12>,
	[[gold, gold, gold],
	 [gold, gold, gold],
	 [iron, gold, gold]]);