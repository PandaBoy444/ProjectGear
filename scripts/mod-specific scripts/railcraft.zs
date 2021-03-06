import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
	// Coke oven
	<railcraft:coke_oven>,
	// Blast furnace
	<railcraft:blast_furnace>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
	// Coke oven
	<railcraft:coke_oven>,
	// Blast furnace
	<railcraft:blast_furnace>,
	// Ingots and blocks - these are coded poorly and therefor immune to UniDuct
	<railcraft:ingot:0>,
	<railcraft:ingot:1>,
	<railcraft:ingot:2>,
	<railcraft:ingot:3>,
	<railcraft:ingot:4>,
	<railcraft:ingot:5>,
	<railcraft:ingot:6>,
	<railcraft:ingot:7>,
	<railcraft:metal:0>,
	<railcraft:metal:1>,
	<railcraft:metal:2>,
	<railcraft:metal:3>,
	<railcraft:metal:4>,
	<railcraft:metal:5>,
	<railcraft:metal:6>,
	<railcraft:metal:7>,
	// Gears - Use Thermal Foundation gears instead
	<railcraft:gear:*>
	
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);



// Changes recipes to not use lead, zinc or silver
recipes.remove(<railcraft:wire>);
recipes.addShaped("chargeShuntingWire", <railcraft:wire> * 8,
            [[<ore:ingotNickel>, <minecraft:paper>, <ore:ingotNickel>],
             [<minecraft:paper>, <railcraft:charge:4>, <minecraft:paper>],
             [<ore:ingotNickel>, <minecraft:paper>, <ore:ingotNickel>]]);
recipes.remove(<railcraft:manipulator:10>);
recipes.addShaped("fluxLoader", <railcraft:manipulator:10>,
            [[<minecraft:redstone_block>, <ore:blockNickel>, <minecraft:redstone_block>],
             [<ore:blockNickel>, <minecraft:redstone_block>, <ore:blockNickel>],
             [<minecraft:redstone_block>, <railcraft:detector:7>, <minecraft:redstone_block>]]);
recipes.remove(<railcraft:manipulator:11>);
recipes.addShaped("fluxUnloader", <railcraft:manipulator:11>,
            [[<minecraft:redstone_block>, <railcraft:detector:7>, <minecraft:redstone_block>],
             [<ore:blockNickel>, <minecraft:redstone_block>, <ore:blockNickel>],
             [<minecraft:redstone_block>, <ore:blockNickel>, <minecraft:redstone_block>]]);
			 
			 
recipes.remove(<railcraft:cart_redstone_flux>);
recipes.addShaped("RedstoneFluxCart", <railcraft:cart_redstone_flux>,
	[[<ore:ingotNickel>, <minecraft:redstone_block>,<ore:ingotNickel>],
	 [<minecraft:redstone_block>,<minecraft:minecart>,<minecraft:redstone_block>],
	 [<ore:ingotNickel>,<minecraft:redstone_block>,<ore:ingotNickel>]]);
	 
// Craft abyssal stone and quarried stone from pebbles
recipes.addShapeless(<railcraft:generic:8>, [<contenttweaker:abyssal_pebble>, <contenttweaker:abyssal_pebble>, <contenttweaker:abyssal_pebble>, <contenttweaker:abyssal_pebble>]);
recipes.addShapeless(<railcraft:generic:9>, [<contenttweaker:quarried_pebble>, <contenttweaker:quarried_pebble>, <contenttweaker:quarried_pebble>, <contenttweaker:quarried_pebble>]);
	 
// Makes Railcraft slag ore dictionary compatible with Immersive Engineering
<ore:itemSlag>.add(<railcraft:dust:4>);

recipes.removeShaped(<railcraft:plate:*>);

recipes.addShaped(<railcraft:equipment>, 
	[[<ore:ingotBronze>, <minecraft:piston:*>, <ore:ingotBronze>], 
	 [<minecraft:piston:*>, <ore:workbench>, <minecraft:piston:*>], 
	 [<ore:ingotBronze>, <minecraft:piston:*>, <ore:ingotBronze>]]);