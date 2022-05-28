#======================================================================
# ファイル名 : chisel.zs
# 作成者 : Hiiragi Russell Tsubasa: https://github.com/Hiiragi283
# 情報 : Tikers Contructおよびそのアドオンの改変
#======================================================================

#priority 0

//crafttweakerからclassをimport
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//各種modからclassをimport
import mods.artisanworktables.builder.RecipeBuilder;
import mods.ctintegration.util.RecipePattern;

//scriptのimport
import scripts.HiiragiUtils;

//このscriptの読み込みの開始をログに出力
print("Start loading chisel.zs ...");

//変数の定義
    mods.jei.JEI.addItem(<tconstruct:edible:5>);
    mods.jei.JEI.addItem(<tconstruct:slime:5>);
    mods.jei.JEI.addItem(<tconstruct:slime_congealed:5>);
    mods.jei.JEI.addItem(<tconstruct:slimesling:5>);
    mods.jei.JEI.addItem(<tconstruct:slime_boots:5>);

//作業台レシピの編集
    //削除
        val removeCrafting as IItemStack[] = [
			<tconstruct:faucet>,
			<tconstruct:channel>,
			<tconstruct:casting:*>,
		];
        for i in removeCrafting {
            HiiragiUtils.removeCrafting(i);
        }
    //上書き
		HiiragiUtils.addCrafting(false, true, <tcomplement:melter>, RecipePattern.init(["ABA", "ACA", "ADA"]).map({A:<tconstruct:materials:0>, B:<minecraft:hopper>, C:<tconstruct:seared_tank:*>, D:<ore:ingotIron>}).ingredients);
    //新規

//かまどレシピの編集
    //削除
        val removeFurnace as IItemStack[] = [];
        for i in removeFurnace {
            HiiragiUtils.removeFurnace(i);
        }
    //新規
        val addFurnace as IIngredient[IItemStack] = {};
        for output, input in addFurnace {
            HiiragiUtils.addFurnace(false, output, input);
        }

//AWレシピの編集
    //import
    //新規
		RecipeBuilder.get("basic")
			.setShapeless([<tconstruct:channel>])
			.addTool(<ore:artisansHandsaw>, 1)
			.addOutput(<tconstruct:faucet>*2)
			.create();

//このscriptの読み込みの完了をログに出力
print("chisel.zs loaded!");
