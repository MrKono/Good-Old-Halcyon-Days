#======================================================================
# ファイル名 : _TEMPLATE.zs
# 作成者 : Hiiragi Russell Tsubasa: https://github.com/Hiiragi283
# 情報 : このファイルについて書く
#======================================================================

#loader contenttweaker
#priority 100

//crafttweakerからclassをimport
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//各種modからclassをimport
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Color;
import mods.contenttweaker.IBlockColorSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.zenutils.HexHelper;

//scriptのimport
import scripts.RussellUtils;

//このscriptの読み込みの開始をログに出力
print("Start loading _TEMPLATE.zs ...");

//アイテムの登録
    val items as string[] = [
        "elven_pearl",
        "ephemerald"
    ];
    for i in items {
        RussellUtils.addItem(i);
    }

//ブロックの登録
    RussellUtils.addBlock("unfired_casting_channel", <blockmaterial:grass>, 3.0, 0.5, "shovel", -1, <soundtype:ground>);
    RussellUtils.addBlock("unfired_casting_table", <blockmaterial:grass>, 3.0, 0.5, "shovel", -1, <soundtype:ground>);
    RussellUtils.addBlock("unfired_casting_basin", <blockmaterial:grass>, 3.0, 0.5, "shovel", -1, <soundtype:ground>);

//このscriptの読み込みの完了をログに出力
print("_TEMPLATE.zs loaded!");