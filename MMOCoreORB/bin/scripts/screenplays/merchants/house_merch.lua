-- Legend of Hondo Merchant System
-- By R. Bassett Jr. (Tatwi) - www.tpot.ca
-- July 2015

local ObjectManager = require("managers.object.object_manager")

HouseMerch = ScreenPlay:new {
	numberOfActs = 1, 	
	relations = { 
		{name="townsperson", npcStanding=-9000, priceAdjust=0}, -- Adjust price only
	},
	goods = {
		{optName="Musty House", cost=10000000, itemName="Musty House", items={"object/tangible/loot/loot_schematic/musty_house_loot_schem.iff"}},
		{optName="Vehicle House", cost=10000000, itemName="Vehicle House", items={"object/tangible/loot/loot_schematic/vehicle_house_loot_schem.iff"}},
	},
}

registerScreenPlay("HouseMerch", true)

function HouseMerch:start() 
	spawnMobile("corellia", "housemerch",0,-170.497,28,-4705.39,134,0)
	--spawnMobile("tatooine", "housemerch", 1, -2720.3, 5.0, 2260.4, -133, 0 ) -- Mos Espa 
	-- Load some decorations
	--spawnSceneObject("tatooine", "object/tangible/camp/camp_pavilion_s1.iff", -2720.3, 5.0, 2260.4, 0, 0, 0, 1, 0)
	--spawnSceneObject("tatooine", "object/tangible/furniture/all/frn_all_data_terminal_free_s2.iff", -2722.3, 5.0, 2262.85, 0, 0, 0, 1, 0)
	--spawnSceneObject("tatooine", "object/static/vehicle/static_speeder_bike.iff", -2725.44, 5.0, 2271.17, 0, 0.0255217, 0, 0.999674, 0)
	--spawnSceneObject("tatooine", "object/static/vehicle/static_swoop_bike.iff", -2722.25, 5.0, 2272.43, 0, 0.0582651, 0, 0.998301, 0)
	--spawnSceneObject("tatooine", "object/static/vehicle/e3/landspeeder.iff", -2725.62, 5.0, 2260.19, 0, 0.729313, 0, 0.68418, 0)
	--spawnSceneObject("tatooine", "object/mobile/vehicle/landspeeder_av21.iff", -2714.16, 5.0, 2260.32, 0, 0.641522, 0, 0.767105, 0)
	--spawnSceneObject("tatooine", "object/mobile/vehicle/speederbike_flash.iff", -2720.57, 5.0, 2254.14, 0, -0.103943, 0, 0.994583, 0)
end

housemerch_convo_handler = Object:new {
	tstring = "myconversation"
 }

function housemerch_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	nextConversationScreen = MerchantSystem:nextConvoScreenInnards(conversationTemplate, conversingPlayer, selectedOption, HouseMerch.relations, HouseMerch.goods)
	
	return nextConversationScreen
end

function housemerch_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	conversationScreen = MerchantSystem:runScreenHandlerInnards(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, HouseMerch.relations, HouseMerch.goods)
	
	return conversationScreen
end