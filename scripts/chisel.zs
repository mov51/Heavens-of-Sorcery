////Imports
import mods.chisel.Carving;
import crafttweaker.item.IItemDefinition;

////Variables
//Sapphire blocks
val blockSapphireIF = <iceandfire:sapphire_block>;
val blockSapphireAW = <arcaneworld:block_sapphire>;
//Amethyst blocks
val blockAmethystAW = <arcaneworld:block_amethyst>;
val blockAmethystBW = <bewitchment:gem_block:7>;
//Thatch
val thatchQuark = <quark:thatch>;
val thatchEarthworks = <earthworks:block_thatch>;
val thatchBetweenlands = <thebetweenlands:thatch>;
val oreThatch = <ore:blockThatch>;
//Stone
val rune1 = <thebetweenlands:druid_stone_1>;
val rune2 = <thebetweenlands:druid_stone_2>;
val rune3 = <thebetweenlands:druid_stone_3>;
val rune4 = <thebetweenlands:druid_stone_4>;
val rune5 = <thebetweenlands:druid_stone_5>;
//Rough Betweenstone
val betweenstone = <thebetweenlands:betweenstone>;
val betweenstoneBricks = <thebetweenlands:betweenstone_bricks>;
val betweenstoneChiseled = <thebetweenlands:betweenstone_chiseled>;
val betweenstoneCracked = <thebetweenlands:cracked_betweenstone_bricks>;
val betweenstoneMossy = <thebetweenlands:mossy_betweenstone_bricks>;
//Smooth betweenstone
val betweenstoneSmooth = <thebetweenlands:smooth_betweenstone>;
val betweenstoneTile = <thebetweenlands:betweenstone_tiles>;
val betweenstoneTileCracked = <thebetweenlands:cracked_betweenstone_tiles>;
val betweenstoneGlowing = <thebetweenlands:glowing_betweenstone_tile>;
val betweenstoneTileMossy = <thebetweenlands:mossy_betweenstone_tiles>;
val betweenstoneSmoothMossy = <thebetweenlands:mossy_smooth_betweenstone>;
val betweenstonePillar = <thebetweenlands:betweenstone_pillar>;
//BL Limestone
val limestoneBL = <thebetweenlands:limestone>;
val limestoneChiseledBL = <thebetweenlands:limestone_chiseled>;
val limestoneCrackedBL = <thebetweenlands:cracked_limestone_bricks>;
val limestoneBrickBL = <thebetweenlands:limestone_bricks>;
val limestoneTileBL = <thebetweenlands:limestone_tiles>;
val limestoneMossyBL = <thebetweenlands:mossy_limestone_bricks>;
val limestonePolishedBL = <thebetweenlands:polished_limestone>;
val limestonePillarBL = <thebetweenlands:limestone_pillar>;
//Rustic Slate
val slate = <rustic:slate>;
val slateRoof = <rustic:slate_roof>;
val slatePillar = <rustic:slate_pillar>;
val slateTile = <rustic:slate_tile>;
val slateBrick = <rustic:slate_brick>;
val slateChiseled = <rustic:slate_chiseled>;
//Sooty Marble
val sootyMarble = <astralsorcery:blockblackmarble>.definition as IItemDefinition;
//livingwood and rock
val livingwood = <botania:livingwood>.definition as IItemDefinition;
val livingrock = <botania:livingrock>.definition as IItemDefinition;

//Add group for Sapphire Blocks
Carving.addGroup("blockSapphire");
Carving.addVariation("blockSapphire", blockSapphireAW);
Carving.addVariation("blockSapphire", blockSapphireIF);

//Add group for Amethyst blocks
Carving.addGroup("blockAmethyst");
Carving.addVariation("blockAmethyst", blockAmethystAW);
Carving.addVariation("blockAmethyst", blockAmethystBW);

//Add group, disable other recipes for thatch blocks and add oredict
recipes.remove(thatchEarthworks);
oreThatch.add(thatchQuark);
oreThatch.add(thatchEarthworks);
oreThatch.add(thatchBetweenlands);
Carving.addGroup("blockThatch");
Carving.addVariation("blockThatch", thatchQuark);
Carving.addVariation("blockThatch", thatchEarthworks);
Carving.addVariation("blockThatch", thatchBetweenlands);

//Add BL Rune Stones to stonebrick group
Carving.addVariation("stonebrick", rune1);
Carving.addVariation("stonebrick", rune2);
Carving.addVariation("stonebrick", rune3);
Carving.addVariation("stonebrick", rune4);
Carving.addVariation("stonebrick", rune5);

//Betweenstone groups
Carving.addGroup("betweenstone");
Carving.addVariation("betweenstone", betweenstone);
Carving.addVariation("betweenstone", betweenstoneBricks);
Carving.addVariation("betweenstone", betweenstoneChiseled);
Carving.addVariation("betweenstone", betweenstoneCracked);
Carving.addVariation("betweenstone", betweenstoneMossy);
Carving.addGroup("betweenstone-smooth");
Carving.addVariation("betweenstone-smooth", betweenstoneSmooth);
Carving.addVariation("betweenstone-smooth", betweenstoneTile);
Carving.addVariation("betweenstone-smooth", betweenstoneTileCracked);
Carving.addVariation("betweenstone-smooth", betweenstoneGlowing);
Carving.addVariation("betweenstone-smooth", betweenstoneTileMossy);
Carving.addVariation("betweenstone-smooth", betweenstoneSmoothMossy);
Carving.addVariation("betweenstone-smooth", betweenstonePillar);

//BL Limestone
Carving.addVariation("limestone", limestoneBL);
Carving.addVariation("limestone", limestoneChiseledBL);
Carving.addVariation("limestone", limestoneCrackedBL);
Carving.addVariation("limestone", limestoneBrickBL);
Carving.addVariation("limestone", limestoneTileBL);
Carving.addVariation("limestone", limestoneMossyBL);
Carving.addVariation("limestone", limestonePolishedBL);
Carving.addVariation("limestone", limestonePillarBL);

//Rustic Slate
Carving.addGroup("slate-rustic");
Carving.addVariation("slate-rustic", slate);
Carving.addVariation("slate-rustic", slateRoof);
Carving.addVariation("slate-rustic", slatePillar);
Carving.addVariation("slate-rustic", slateTile);
Carving.addVariation("slate-rustic", slateBrick);
Carving.addVariation("slate-rustic", slateChiseled);

//Sooty Marble
Carving.addGroup("sootyMarble");
for i in 0 to 6 {
	Carving.addVariation("sootyMarble", sootyMarble.makeStack(i));
}

//Livingwood planks
Carving.addGroup("livingwood-planks");
for j in 1 to 4 {
	Carving.addVariation("livingwood-planks", livingwood.makeStack(j));
}

//Livingrock
Carving.addGroup("livingrock");
for k in 0 to 4 {
	Carving.addVariation("livingrock", livingrock.makeStack(k));
}