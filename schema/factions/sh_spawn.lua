FACTION.name = "Newcomers"
FACTION.description = "Spawn Job"
FACTION.color = Color(77, 54, 54)
FACTION.pay = 0
FACTION.isDefault = true
FACTION.isGloballyRecognized = true
FACTION.models = {"models/muschi/city/muschi_city_spo.mdl", "models/muschi/inquisition/muschi_inq_agent_militant.mdl", "models/muschi/inquisition/muschi_inq_agent_militant_f.mdl", "models/muschi/characters/muschi_inq_elizabeth.mdl", "models/muschi/chaos/muschi_chaos_cultist.mdl", "models/knight_ig/muschi_ig_guard_makk.mdl", "models/muschi/characters/muschi_inq_semenistka.mdl", "models/dizcordum/wk/ecclesiarchy/Priest.mdl", "models/player/tfa_tw3/gaetan.mdl", "models/krig/krig_sol.mdl", "models/krig/krig_gren.mdl", "models/sc_899th_penal.mdl", "models/sc_899th_guard.mdl", "models/sc_899h_guard_female.mdl", "models/fptp_786th_razvedka.mdl", "models/muschi/inquisition/muschi_inq_acolyte_ivent.mdl", "models/muschi/city/muschi_city_raider_1.mdl", "models/muschi/inquisition/muschi_inq_agent_techdude.mdl", "models/knight_ig/muschi_ig_guard_chad.mdl", "models/muschi/chaos/muschi_chaos_separatist.mdl", "models/muschi/characters/muschi_ig_dialogus.mdl", "models/nathaniel_grexus.mdl"}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()
	inventory:Add("starterpack")
end

FACTION_SPW = FACTION