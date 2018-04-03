import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

#priority 99
/*
* item - the item you want to disable
*/
function disableItem(item as IItemStack){
  //any operation on a disabled item happends here
  item.addTooltip(format.darkRed("Disabled!"));
  mods.jei.JEI.removeAndHide(item);
}

/*
* items - the items you want to disable, they will be disabled one by one
* using the function scripts.functions.disableItem(item as IItemStack)
* if you want them to undergo additional operations, add them to that function
*/
function disableItems(items as IItemStack[]){
  for item in items {
    disableItem(item);
  }
}

function addToPureDaisyStages(items as IItemStack[], time as int){
  var lever = true as bool;
  var last = items[0] as IItemStack;
  for item in items {
    if (lever){
      last = item;
    }else{
      mods.botania.PureDaisy.addRecipe(last, item, time);
    }
    lever = !lever;
  }
}

function addAlchemyStages(items as IItemStack[], mana as int){
  var lever = true as bool;
  var last = items[0] as IItemStack;
  for item in items {
    if (lever){
      last = item;
    }else{
      mods.botania.ManaInfusion.addAlchemy(last, item, mana);
    }
    lever = !lever;
  }
}

function applyOreDict(item as IItemStack, oreD as IOreDictEntry, add as bool){
  if (add){ //adding to the oredict
    oreD.add(item);
  }else{//removing from the oredict
    oreD.remove(item);
  }
}

function applyOreDictArray(items as IItemStack[], oreD as IOreDictEntry, add as bool){
  if (add){ //adding to the oredict
    oreD.addItems(items);
  }else{//removing from the oredict
    oreD.removeItems(items);
  }
}
