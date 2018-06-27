DathBunkerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "DathBunkerScreenPlay",

registerScreenPlay("DathBunkerScreenPlay", true)

}

function DathBunkerScreenPlay:start()
	if (isZoneEnabled("dathomir")) then
                self:spawnMobiles()
				self:spawnSceneObjects()
                --self:initializeLootContainers()
        end
end

function DathBunkerScreenPlay:spawnSceneObjects()

	
end

function DathBunkerScreenPlay:spawnMobiles()

--Inside
spawnMobile("dathomir", "nilyahin_apprentice", 600, -3008.29, 77, -5679.2, 356, 0)
spawnMobile("dathomir", "nilyahin_apprentice", 600, -3001.81, 77, -5679.2, 359, 0)
spawnMobile("dathomir", "nilyahin_assassin", 600, -3017.37, 77, -5676.83, 339, 0) 
spawnMobile("dathomir", "nilyahin_assassin", 600, -3017.91, 77, -5675.22, 152, 0)
spawnMobile("dathomir", "nilyahin_apprentice", 600, -3015.33, 77, -5662.06, 95, 0)
spawnMobile("dathomir", "nilyahin_assassin", 600, -2988.6, 77, -5660.21, 267, 0) 
spawnMobile("dathomir", "nilyahin_smuggler", 600, -2990.48, 77, -5667.52, 176, 0)
spawnMobile("dathomir", "nilyahin_specialist", 600, -2990.37, 77, -5669.67, 1, 0)
spawnMobile("dathomir", "nilyahin_assassin", 600, -2989.96, 77, -5675.75, 300, 0)
spawnMobile("dathomir", "nilyahin_apprentice", 600, 3.52592, 0.25, -4.0734, 271, 9925416)
spawnMobile("dathomir", "nilyahin_assassin", 600, 2.39479, -12, 30.545, 167, 9925418)
spawnMobile("dathomir", "nilyahin_bulwark_defense_droid", 600, -12.4357, -12, 40.7943, 181, 9925418)
spawnMobile("dathomir", "nilyahin_old_guard", 600, -7.13368, -12, 50.7706, 107, 9925418)
spawnMobile("dathomir", "nilyahin_apprentice", 600, 3.54831, -12, 65.4137, 176, 9925418)
spawnMobile("dathomir", "nilyahin_mentor", 600, 5.65389, -12, 62.9842, 270, 9925418)
spawnMobile("dathomir", "nilyahin_specialist", 600, 3.6656, -12, 61.0378, 1, 9925418)
spawnMobile("dathomir", "nilyahin_assassin", 600, 24.2768, -12, 43.039, 39, 9925418)
spawnMobile("dathomir", "nilyahin_old_guard", 600, 12.9237, -12, 45.6655, 208, 9925418)
spawnMobile("dathomir", "nilyahin_apprentice", 600, 53.8342, -12, 0.770959, 90, 9925431)
spawnMobile("dathomir", "nilyahin_assassin", 600, 57.8195, -12, 0.727627, 257, 9925431)
spawnMobile("dathomir", "nilyahin_specialist", 600, 41.7657, -12, 10.8816, 280, 9925431)
spawnMobile("dathomir", "nilyahin_smuggler", 600, 41.202, -12, 20.399, 265, 9925431)
spawnMobile("dathomir", "nilyahin_smuggler", 600, 27.4715, -12, 20.4544, 325, 9925431)
spawnMobile("dathomir", "nilyahin_sentinel_droid", 600, 23.5257, -12, 6.82044, 185, 9925431)
spawnMobile("dathomir", "nilyahin_smuggler", 600, 23.4864, -12, 4.72352, 1, 9925431)
spawnMobile("dathomir", "nilyahin_old_guard", 600, -22.1878, -20, -2.47607, 82, 9925433)
spawnMobile("dathomir", "nilyahin_bulwark_defense_droid", 600, -15.9878, -20, 1.60224, 82, 9925433)
spawnMobile("dathomir", "nilyahin_apprentice", 600, -15.9579, -20, 3.75461, 96, 9925433)
spawnMobile("dathomir", "nilyahin_smuggler", 600, -30.294, -20, 30.4626, 183, 9925435)
spawnMobile("dathomir", "nilyahin_assassin", 600, -30.3665, -20, 84.201, 180, 9925435)
spawnMobile("dathomir", "nilyahin_mentor", 600, -7.8678, -20, 102.217, 247, 9925436)
spawnMobile("dathomir", "nilyahin_master_smuggler", 600, -22.3889, -20, 103.871, 356, 9925436)
spawnMobile("dathomir", "nilyahin_apprentice", 600, -14.5696, -20, 84.6276, 0, 9925438)
spawnMobile("dathomir", "nilyahin_specialist", 600, -6.79983, -20, 74.598, 92, 9925439)
spawnMobile("dathomir", "nilyahin_assassin", 600, 0.947408, -20, 67.8583, 2, 9925439)
spawnMobile("dathomir", "nilyahin_smuggler", 600, 73.7731, -12, 58.6577, 98, 9925428)
spawnMobile("dathomir", "nilyahin_old_guard", 600, 48.5636, -12, 58.9051, 268, 9925428)
spawnMobile("dathomir", "nilyahin_sentinel_droid", 600, 52.7377, -12, 81.9344, 175, 9925427)
spawnMobile("dathomir", "nilyahin_mentor", 600, 70.6092, -12, 82.9978, 271, 9925427)
spawnMobile("dathomir", "nilyahin_master_smuggler", 600, 35.3565, -12, 70.8913, 180, 9925426)
spawnMobile("dathomir", "nilyahin_apprentice", 600, 37.7127, -20, 125.248, 189, 9925429)
spawnMobile("dathomir", "nilyahin_smuggler", 600, 35.9771, -20, 142.627, 178, 9925429)
spawnMobile("dathomir", "nilyahin_mentor", 600, 32.5684, -20, 119.99, 147, 9925429)
spawnMobile("dathomir", "nilyahin_bulwark_defense_droid", 600, 19.2238, -20, 116.052, 174, 9925429)
spawnMobile("dathomir", "nilyahin_specialist", 600, 34.1445, -20, 136.172, 207, 9925429)
spawnMobile("dathomir", "nilyahin_master_smuggler", 600, -52.1899, -20, 44.0252, 60, 9925421)
spawnMobile("dathomir", "nilyahin_sentinel_droid", 600, -51.4544, -20, 51.9265, 136, 9925421)
spawnMobile("dathomir", "nilyahin_smuggler", 600, -75.904, -20, 47.0358, 91, 9925421)
spawnMobile("dathomir", "nilyahin_old_guard", 600, -59.2749, -20, 66.2918, 26, 9925421)
spawnMobile("dathomir", "nilyahin_apprentice", 600, -52.1863, -20, 31.2822, 325, 9925421)
spawnMobile("dathomir", "nilyahin_master_smuggler", 600, -61.6947, -20, 30.2271, 297, 9925421)
spawnMobile("dathomir", "nilyahin_mentor", 600, -74.6596, -20, 13.0408, 89, 9925422)
spawnMobile("dathomir", "nilyahin_smuggler", 600, -56.1909, -20, 14.4642, 356, 9925422)
spawnMobile("dathomir", "nilyahin_specialist", 600, -59.9898, -20, 9.00517, 293, 9925422)
spawnMobile("dathomir", "nilyahin_old_guard", 600, -74.7649, -20, 85.7018, 147, 9925424)
spawnMobile("dathomir", "nilyahin_bulwark_defense_droid", 600, -48.6707, -20, 79.9259, 230, 9925424)
spawnMobile("dathomir", "nilyahin_assassin", 600, -27.3613, -20, 113.119, 358, 9925436)
spawnMobile("dathomir", "nilyahin_tribunal", 2400, -27.4558, -20, 115.901, 178, 9925436)
end
