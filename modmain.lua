Recipe = GLOBAL.Recipe
RECIPETABS = GLOBAL.RECIPETABS
TECH = GLOBAL.TECH
Ingredient = GLOBAL.Ingredient

require("recipes")
PrefabFiles = {
	"contest_keys",
	"k_irongate",
}
Assets = {
	Asset("ATLAS_BUILD", "images/inventoryimages/kyno_irongate_item.xml", 256),
	Asset( "IMAGE", "images/inventoryimages/kyno_irongate_item.tex" ), Asset( "ATLAS", "images/inventoryimages/kyno_irongate_item.xml" ),
}

AddRecipe("kyno_irongate_item", 
	{Ingredient("twigs", 6), Ingredient("flint", 2)},
	RECIPETABS.TOWN, TECH.SCIENCE_TWO, nil, nil, nil, 20, nil, 
"images/inventoryimages/kyno_irongate_item.xml", "kyno_irongate_item.tex")

AddRecipe("kyno_irongate", 
	{Ingredient("twigs", 6), Ingredient("flint", 2)},
	RECIPETABS.TOWN, TECH.SCIENCE_TWO, "kyno_irongate_placer", 4, nil, nil, nil, 
"images/inventoryimages/kyno_irongate_item.xml", "kyno_irongate_item.tex")