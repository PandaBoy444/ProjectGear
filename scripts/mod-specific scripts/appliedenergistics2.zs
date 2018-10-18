import crafttweaker.item.IItemStack;
//disable applied energistics disc storage
val itemsToDisable =[
  <appliedenergistics2:storage_cell_16k>,
  <appliedenergistics2:storage_cell_64k>,
  //Note: Disabled to encourage more interesting methods for storing items.
  //Note: The 4k drives are enabled for performance reasons. Farms that produce large amounts of one item (iron, wheat, bones...) tend to product
  //a lot of that item, which means if you had to keep dumping them into a storage drawer it would cause a lot of tile entity updates.
  <appliedenergistics2:molecular_assembler>,
  //note: Disabled to encourage more interesting crafting setups
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable); 


val goldIngot = <ore:ingotGold>;
val nickelIngot = <ore:ingotNickel>;
val redstone = <ore:dustRedstone>;
val glass = <ore:blockGlass>;
val tinIngot = <ore:ingotTin>;


//Replace iron with osmium
recipes.removeShaped(<appliedenergistics2:material:25>);
recipes.addShaped(<appliedenergistics2:material:25> * 2,
	[[goldIngot, tinIngot, null],
	 [redstone, <appliedenergistics2:material:23>, tinIngot],
	 [goldIngot, tinIngot, null]]);


recipes.removeShaped(<appliedenergistics2:material:28>);
recipes.addShaped(<appliedenergistics2:material:28> * 2,
	[[<minecraft:diamond>, tinIngot, null],
	 [redstone, <appliedenergistics2:material:23>, tinIngot],
	 [<minecraft:diamond>, tinIngot, null]]);

recipes.removeShaped(<appliedenergistics2:interface>);
recipes.addShaped(<appliedenergistics2:interface>,
	[[tinIngot, glass, tinIngot],
	 [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>],
	 [tinIngot, glass, tinIngot]]);


recipes.removeShaped(<appliedenergistics2:part:240>);
recipes.addShaped(<appliedenergistics2:part:240>,
	[[null, null, null],
	 [null, <appliedenergistics2:material:44>, null],
	 [tinIngot, <minecraft:sticky_piston>, tinIngot]]);


recipes.removeShaped(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>,
	[[null, null, null],
	 [tinIngot, <appliedenergistics2:material:43>, tinIngot],
	 [null, <minecraft:piston>, null]]);


var ingotSteel = <ore:ingotSteel>;
var plateTin = <ore:plateTin>;
var plateNickel = <ore:plateNickel>;
recipes.addShaped(<appliedenergistics2:material:13>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:14>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold:2>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:15>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold:1>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:19>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold:7>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:21>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold:4>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);
  
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:2>, <ore:crystalCertusQuartz>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:2>, <ore:oreCertusQuartz>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:8>, <ore:crystalFluix>, 2048);


mods.integrateddynamics.Squeezer.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:0>, null);
mods.integrateddynamics.Squeezer.addRecipe(<appliedenergistics2:material:2>, <minecraft:quartz>, null);
mods.integrateddynamics.Squeezer.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, null);

val EnderPearl = <minecraft:ender_pearl>;
val EnderDust = <appliedenergistics2:material:46>;

//Crush ender pearls into ender pearl dust
mods.immersiveengineering.Crusher.addRecipe(EnderDust, EnderPearl, 2048);
mods.integrateddynamics.Squeezer.addRecipe(EnderPearl, EnderDust, null);
mods.factorytech.DrillGrinder.addRecipe(EnderDust, EnderPearl, true);

//Adds ore dictionary name to charged certus quartz ore:
val oreCertusQuartzCharged = <ore:oreCertusQuartzCharged>;
oreEtherium.add(<appliedenergistics2:charged_quartz_ore>);