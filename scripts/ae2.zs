#====================================================================
# ファイル名 : ae2.zs
# 作成者 : Hiiragi Russell Tsubasa: https://github.com/Hiiragi283
# 情報 : Scripts for Applied Energistics 2
#====================================================================

#priority 0

//crafttweakerからclassをimport
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//各種modからclassをimport
import mods.ctintegration.util.RecipePattern;

//scriptのimport
import scripts.HiiragiUtils;

//このscriptの読み込みの開始をログに出力
print("Start loading ae2.zs ...");

//作業台レシピの編集
	//上書き
	//AE2
	HiiragiUtils.addCraftingShapeless(true, <appliedenergistics2:material>*4, [<appliedenergistics2:quartz_block:0>], null, null);
	//Lazy AE2
	HiiragiUtils.addCraftingShapeless(true, <threng:material:1>, [<ore:dustFluix>, <ore:dustCoal>|<ore:dustCharcoal>, <ore:itemSilicon>], null, null);

	//新規
	//AE2
	HiiragiUtils.addCraftingShaped(false, <appliedenergistics2:creative_energy_cell>, RecipePattern.init(["AAA", "ABA", "AAA"]).map({A:<appliedenergistics2:dense_energy_cell>, B:<extendedcrafting:singularity_ultimate>.reuse()}).ingredients, null, null);
	HiiragiUtils.addCraftingShaped(false, <appliedenergistics2:material:16>, RecipePattern.init([" A ", "BCB", " D "]).map({A:HiiragiUtils.toolInput(<appliedenergistics2:certus_quartz_cutting_knife>, 1), B:<ore:dustRedstone>, C:<ore:crystalPureCertusQuartz>, D:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addCraftingShaped(false, <appliedenergistics2:material:17>, RecipePattern.init([" A ", "BCB", " D "]).map({A:HiiragiUtils.toolInput(<appliedenergistics2:certus_quartz_cutting_knife>, 1), B:<ore:dustRedstone>, C:<ore:gemDiamond>, D:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addCraftingShaped(false, <appliedenergistics2:material:18>, RecipePattern.init([" A ", "BCB", " D "]).map({A:HiiragiUtils.toolInput(<appliedenergistics2:certus_quartz_cutting_knife>, 1), B:<ore:dustRedstone>, C:<ore:ingotGold>, D:<ore:itemSilicon>}).ingredients, null, null);
	//Lazy AE2
	HiiragiUtils.addCraftingShaped(false, <contenttweaker:assembly_parallel>, RecipePattern.init([" A ", "BCB", " D "]).map({A:HiiragiUtils.toolInput(<appliedenergistics2:certus_quartz_cutting_knife>, 1), B:<ore:dustRedstone>, C:<threng:material:5>, D:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addCraftingShaped(false, <contenttweaker:assembly_speculative>, RecipePattern.init([" A ", "BCB", " D "]).map({A:HiiragiUtils.toolInput(<appliedenergistics2:certus_quartz_cutting_knife>, 1), B:<ore:dustRedstone>, C:<threng:material:13>, D:<ore:itemSilicon>}).ingredients, null, null);

//このscriptの読み込みの完了をログに出力
print("ae2.zs loaded!");
