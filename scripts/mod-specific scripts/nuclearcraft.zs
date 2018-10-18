import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <nuclearcraft:water_source>,
  <nuclearcraft:water_source_compact>,
  <nuclearcraft:water_source_dense>,
  //Note: Disabled because there are more fun ways to make water
  <nuclearcraft:cobblestone_generator>,
  <nuclearcraft:cobblestone_generator_compact>,
  //Note: Cobblestone generators are intended to be done in world with block breakers or with quarries, etc
  <nuclearcraft:solar_panel_basic>,
  //Note: There are more fun ways to generate power
  <nuclearcraft:manufactory_idle>,
  //note: Disabled in favor of other ore processing setups
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

#oredics
<ore:plateLead>.add(<nuclearcraft:part>);


#recipes
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateLead>, <botania:manaresource>, <ore:plateLead>],
	 [<botania:manaresource>, null, <botania:manaresource>],
	 [<ore:plateLead>, <botania:manaresource>, <ore:plateLead>]]);
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateLead>, <tconstruct:ingots:1>, <ore:plateLead>],
	 [<tconstruct:ingots:1>, null, <tconstruct:ingots:1>],
	 [<ore:plateLead>, <tconstruct:ingots:1>, <ore:plateLead>]]);
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateLead>, <ore:ingotPlatinum>, <ore:plateLead>],
	 [<ore:ingotPlatinum>, null, <ore:ingotPlatinum>],
	 [<ore:plateLead>, <ore:ingotPlatinum>, <ore:plateLead>]]);

//## disabled through config:
//Disabled the abilitiy for nuclearcraft's machines to process ores; see https://git.io/vxQWi for more info

#Renames
scripts.functions.rename(<nuclearcraft:part:6>,"Plastic Sheet");
scripts.functions.rename(<nuclearcraft:ore:5>,"Borax Ore");
scripts.functions.rename(<nuclearcraft:ore:3>,"Thorite Ore");

#Ore dict


//Make obtaining Nuclearcraft glowing mushrooms more interesting
recipes.removeShapeless(<nuclearcraft:glowing_mushroom>);
recipes.addShapeless(<nuclearcraft:glowing_mushroom>, [<ore:mushroomAny>, <ore:mushroomAny>, <natura:nether_glowshroom:*>, <natura:nether_glowshroom:*>]);

