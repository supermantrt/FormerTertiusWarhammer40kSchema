Schema.name = "Warhammer 40krp"
Schema.author = "Neo"
Schema.description = "Welcome to Project Tertius!"

-- Include netstream
ix.util.Include("libs/thirdparty/sh_netstream2.lua")

ix.util.Include("sh_configs.lua")
ix.util.Include("sh_commands.lua")

ix.util.Include("cl_schema.lua")
ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_hooks.lua")
ix.util.Include("sh_voices.lua")
ix.util.Include("sv_schema.lua")
ix.util.Include("sv_hooks.lua")

ix.util.Include("meta/sh_player.lua")
ix.util.Include("meta/sv_player.lua")
ix.util.Include("meta/sh_character.lua")

ix.flag.Add("v", "Access to light blackmarket goods.")
ix.flag.Add("V", "Access to heavy blackmarket goods.")
ix.flag.Add("a", "Access to armor goods.")
ix.flag.Add("w", "Access to weapon goods.")
ix.flag.Add("i", "Access to illegal goods.")
ix.flag.Add("o", "Access to ammo.")
ix.flag.Add("g", "Access to GM items.")
ix.flag.Add("I", "Access to Medical items.")
ix.flag.Add("Q", "Access to Crafting.")
ix.flag.Add("N", "Disables Pickpocketability on person.")

-- KROOT
ix.anim.SetModelClass("models/kroot.mdl", "player")
ix.anim.SetModelClass("models/kroot_bohge.mdl", "player")
ix.anim.SetModelClass("models/kroot_hevy.mdl", "player")
ix.anim.SetModelClass("models/kroot_med.mdl", "player")
ix.anim.SetModelClass("models/kroot_str.mdl", "player")
ix.anim.SetModelClass("models/kroot_str_holse.mdl", "player")
ix.anim.SetModelClass("models/kroot_str_vohge.mdl", "player")
-- ROMAN MODELS

ix.anim.SetModelClass("models/muschi/spartan/muschi_ig_agesilay.mdl", "player")
ix.anim.SetModelClass("models/muschi/spartan/muschi_ig_archin.mdl", "player")
ix.anim.SetModelClass("models/muschi/spartan/muschi_ig_higher_agesilay.mdl", "player")
ix.anim.SetModelClass("models/muschi/spartan/muschi_ig_higher_veteran.mdl", "player")
ix.anim.SetModelClass("models/muschi/spartan/muschi_ig_hwt.mdl", "player")
ix.anim.SetModelClass("models/muschi/spartan/muschi_ig_ilot.mdl", "player")
ix.anim.SetModelClass("models/muschi/spartan/muschi_ig_medic.mdl", "player")
ix.anim.SetModelClass("models/muschi/spartan/muschi_ig_sgt.mdl", "player")
--
ix.anim.SetModelClass("models/characters/characters/muschi_inq_sombra.mdl", "player")

--

ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_agent_techdude.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/chaos/cultist/cultist5.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/chaos/cultist/cultist4.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/chaos/cultist/cultist3.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_vet_storm.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/chaos/cultist/cultist2.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/chaos/cultist/cultist1.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_vet_med.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_enginseer_big.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_priest_mars.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_protector.mdl", "player")
ix.anim.SetModelClass("models/sc_899th_med_kmd.mdl", "player")
ix.anim.SetModelClass("models/sc_899th_med.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_vet_med.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/humans/numb_peacekeeper.mdl", "player")
ix.anim.SetModelClass("models/player/kalimando/mirasu_boy.mdl", "player")
ix.anim.SetModelClass("models/player/bloodborne_male.mdl", "player")
ix.anim.SetModelClass("models/player/bloodborne_female.mdl", "player")

--- Stuff
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_transmech.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_aristokrat.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_citizen_1.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_doctor.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_raider_1.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_cultist.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_nurgle_cultist.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_comissar.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_comissar.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_comissar_cadet.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_citizen_1.mdl", "player")
ix.anim.SetModelClass("models/fptp_105th_guard.mdl", "player")
ix.anim.SetModelClass("models/fptp_105th_guard_meh.mdl", "player")
ix.anim.SetModelClass("models/fptp_105th_let.mdl", "player")
ix.anim.SetModelClass("models/wahas/sto_piaty/blat/barons_105th_guard_vox.mdl", "player")
ix.anim.SetModelClass("models/wahas/sto_piaty/blat/barons_105th_guard_sgt.mdl", "player")
ix.anim.SetModelClass("models/fptp_105th_vox.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_egida.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_egida_med.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_egida_sgt.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_storm.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_vet_storm.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_sergant.mdl", "player")
ix.anim.SetModelClass("models/fptp_105th_sgt.mdl", "player")
ix.anim.SetModelClass("models/fptp_105th_vox.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_77th_kasrkin.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_77th_kasrkin_med.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_77th_kasrkin_sgt.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_comissar.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_comissar_cadet.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_guard.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_guard_med.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_hwt.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_let.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_maj.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_med.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_med_kmd.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_penal.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_razvedka.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_sgt.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_swt.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_swt_flamer.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_swt_grenade.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_swt_sniper.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_vet.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_vet_sgt.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_vet_vox.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_vox.mdl", "player")
ix.anim.SetModelClass("models/sc_899th_penal.mdl", "player")
ix.anim.SetModelClass("models/sc_899th_let.mdl", "player")
ix.anim.SetModelClass("models/sc_899th_maj.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_77th_kasrkin_med.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_77th_kasrkin.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_comissar_cadet.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_comissar.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_acolyte.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_agent_f.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_agent_m.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_agent_ivent.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_chaplain.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_ogryn.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_ogryn_bonehead.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_priest.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_enginseer.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_enginseer_prim.mdl", "player")
ix.anim.SetModelClass("models/black_fusiliers.mdl", "player")
ix.anim.SetModelClass("models/black_fusiliers_med.mdl", "player")
ix.anim.SetModelClass("models/black_fusiliers_sgt.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_citizen_1.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_aristokrat.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_doctor.mdl", "player")
ix.anim.SetModelClass("models/player/group01/male_09.mdl", "player")
ix.anim.SetModelClass("models/muschi/astartes/muschi_astartes_tactic.mdl", "player")
ix.anim.SetModelClass("models/muschi/astartes/muschi_astartes_veteran.mdl", "player")
ix.anim.SetModelClass("models/fptp_786th_ws.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_tank.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_tank_officer.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_elizabeth.mdl", "player")
ix.anim.SetModelClass("models/muschi/astartes/muschi_astartes_tactic.mdl", "player")
ix.anim.SetModelClass("models/muschi/astartes/muschi_astartes_veteran.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_mech_fish.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_guard_female.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_guard_int.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_guard_med.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_guard_special.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_death_guard.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_guard.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_guard_chad.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_officer.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_officer_major.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_tank_officer.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_officer.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_officer_major.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_arco_flagelant.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_marine.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_sister_of_battle.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_tempestus_scion.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_agent_militant.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_agent_militant_f.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_nod.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_muschi.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_semenistka.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_smertobaba.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_witch.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_renagate_astartes_sgt.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_renagate_astartes.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_heretic.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_squat.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_malagra.mdl", "player")
ix.anim.SetModelClass("models/characters/characters/muschi_inq_strasnyaebaka.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_astartes_slaanesh.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_deathguard.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_squat_kalt.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_ogryn_shaman.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_ogryn_bonehead.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_squat.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_ig_dialogus.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/civ/workers/civ_male.mdl", "player")
ix.anim.SetModelClass("models/krige/krigemedic.mdl", "player")
ix.anim.SetModelClass("models/krige/krigescout.mdl", "player")
ix.anim.SetModelClass("models/krige/krigesgt.mdl", "player")
ix.anim.SetModelClass("models/krige/krigestorm.mdl", "player")
ix.anim.SetModelClass("models/krige/krigetanker.mdl", "player")
ix.anim.SetModelClass("models/krige/krigetrooper.mdl", "player")
ix.anim.SetModelClass("models/krige/krigevet.mdl", "player")
ix.anim.SetModelClass("models/krige/krigeofficer.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_vox.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_spec.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_sol.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_officer.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_med.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_komissar.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_gren.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_flamer.mdl", "player")
ix.anim.SetModelClass("models/krig/krig_eng.mdl", "player")
ix.anim.SetModelClass("models/kotya/valhalla/val_hwt.mdl", "player")
ix.anim.SetModelClass("models/kotya/valhalla/val_med.mdl", "player")
ix.anim.SetModelClass("models/kotya/valhalla/val_off.mdl", "player")
ix.anim.SetModelClass("models/kotya/valhalla/val_sld.mdl", "player")
ix.anim.SetModelClass("models/wastroya/hammer/vastroya_pvt.mdl", "player")
ix.anim.SetModelClass("models/wastroya/hammer/vastroya_sergunt.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_guard_makk.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_tempestus_scion_fish.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_tempestus_scion_med.mdl", "player")
ix.anim.SetModelClass("models/admeh_visionary.mdl", "player")

-- Fantasy Models
ix.anim.SetModelClass("models/dmitriykralle.mdl", "player")
ix.anim.SetModelClass("models/muschi/orks/muschi_ork_nob_boy.mdl", "player")
ix.anim.SetModelClass("models/archie/rage_enforcer.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_guard_stinky.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_guard_med.mdl", "player")
ix.anim.SetModelClass("models/muschi/knight_ig/muschi_ig_guard_int.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/imperium/enforcer/enf_male.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/imperium/enforcer/enf_female.mdl", "player")
ix.anim.SetModelClass("models/bloocobalt/dow/guardsman.mdl", "player")
ix.anim.SetModelClass("models/imperialguard_hir.mdl", "player")
ix.anim.SetModelClass("models/ig_commander.mdl", "player")
ix.anim.SetModelClass("models/imperialguard.mdl", "player")
ix.anim.SetModelClass("models/ladymaria/ladymaria_resized_pm.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_dominus.mdl", "player")
ix.anim.SetModelClass("models/broadside.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_squat_kalt.mdl", "player")
ix.anim.SetModelClass("models/sc_899th_guard.mdl", "player")
ix.anim.SetModelClass("models/morrigan_combined.mdl", "player")
ix.anim.SetModelClass("models/apti/nicholas_PM.mdl", "player")
ix.anim.SetModelClass("models/ulman/dark_elf_mage.mdl", "player")
ix.anim.SetModelClass("models/player/tfa_tw3/dandelion_v1.mdl", "player")
ix.anim.SetModelClass("models/player/tfa_tw3/dandelion_v2.mdl", "player")
ix.anim.SetModelClass("models/player/tfa_tw3/djikstra.mdl", "player")
ix.anim.SetModelClass("models/player/tfa_tw3/emhyr.mdl", "player")
ix.anim.SetModelClass("models/player/tfa_tw3/eskel.mdl", "player")
ix.anim.SetModelClass("models/player/tfa_tw3/foltest.mdl", "player")
ix.anim.SetModelClass("models/player/tfa_tw3/gaetan.mdl", "player")
ix.anim.SetModelClass("models/player/tfa_tw3/iorveth.mdl", "player")
ix.anim.SetModelClass("models/an_cc_necromancer.mdl", "player")
ix.anim.SetModelClass("models/morrigandress_pm.mdl", "player")
ix.anim.SetModelClass("models/konnie/witcher3/avallach.mdl", "player")
ix.anim.SetModelClass("models/dark_scout.mdl", "player")
ix.anim.SetModelClass("models/dark_champion.mdl", "player")
ix.anim.SetModelClass("models/dark_chaplain.mdl", "player")
ix.anim.SetModelClass("models/dark_captian.mdl", "player")
ix.anim.SetModelClass("models/dark_devastator.mdl", "player")
ix.anim.SetModelClass("models/dark_librarian.mdl", "player")
ix.anim.SetModelClass("models/dark_tactical.mdl", "player")
ix.anim.SetModelClass("models/dark_techmarine.mdl", "player")
ix.anim.SetModelClass("models/dark_apothecary.mdl", "player")

-- The wacky collection

ix.anim.SetModelClass("models/dwdarksouls/models/ciaran.mdl", "player")
ix.anim.SetModelClass("models/player/bloodborne_female.mdl", "player")
ix.anim.SetModelClass("models/player/bloodborne_male.mdl", "player")
ix.anim.SetModelClass("models/player/kalimando/mirasu_boy.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/wk/ecclesiarchy/Priest.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_sombra.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/wk/ecclesiarchy/Abbat.mdl", "player")
ix.anim.SetModelClass("models/dreadhunger/player/hunter.mdl", "player")
ix.anim.SetModelClass("models/shin.mdl", "player")
ix.anim.SetModelClass("models/player/hood/robe1.mdl", "player")
ix.anim.SetModelClass("models/player/hood/robe3.mdl", "player")
ix.anim.SetModelClass("models/player/hood/robe2.mdl", "player")
ix.anim.SetModelClass("models/ulman/male.mdl", "player")
ix.anim.SetModelClass("models/yevocore/cat/cat.mdl", "player")
ix.anim.SetModelClass("models/inq_hosp_mirabelle.mdl", "player")
ix.anim.SetModelClass("models/inq_hosp_amelia.mdl", "player")
ix.anim.SetModelClass("models/inq_sister_victoria.mdl", "player")
ix.anim.SetModelClass("models/inq_syperior_maria.mdl", "player")
ix.anim.SetModelClass("models/clovergv.mdl", "player")

-- Requested Stuff

ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_apostol.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_raider_2.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_raider_3.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_raider_boss.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_spo.mdl", "player")
ix.anim.SetModelClass("models/muschi/city/muschi_city_spo_2.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_renegate.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_separatist.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_separatist_storm.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_separatist_psyker.mdl", "player")
ix.anim.SetModelClass("models/muschi/chaos/muschi_chaos_separatist_officer.mdl", "player")
ix.anim.SetModelClass("models/knight_ig/muschi_ig_ranger.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_priest_metall.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_secutor.mdl", "player")
ix.anim.SetModelClass("models/hell_inq.mdl", "player")

--HL2 stuff
ix.anim.SetModelClass("models/eliteghostcp.mdl", "metrocop")
ix.anim.SetModelClass("models/eliteshockcp.mdl", "metrocop")
ix.anim.SetModelClass("models/leet_police2.mdl", "metrocop")
ix.anim.SetModelClass("models/sect_police2.mdl", "metrocop")
ix.anim.SetModelClass("models/policetrench.mdl", "metrocop")
ix.anim.SetModelClass("models/Humans/Group01/male_02.mdl", "citizen_male")

--Rouge Trader
ix.anim.SetModelClass("Models/muschi/knight_ig/muschi_ig_vet_med.mdl", "player")
ix.anim.SetModelClass("Models/knight_ig/muschi_ig_consript.mdl", "player")
ix.anim.SetModelClass("Models/madorthene.mdl", "player")
ix.anim.SetModelClass("models/wahas/sto_piaty/blat/barons_105th_guard.mdl", "player")
ix.anim.SetModelClass("Models/dizcordum/wk/mercenary/croto_hark.mdl", "player")
ix.anim.SetModelClass("models/muschi/characters/muschi_inq_elizabeth.mdl", "player")
ix.anim.SetModelClass("models/psy/psyker_biomant.mdl", "player")
ix.anim.SetModelClass("models/muschi/orks/muschi_ork_komandoz.mdl", "player")
ix.anim.SetModelClass("models/muschi/orks/muschi_ork_boyzzz.mdl", "player")
ix.anim.SetModelClass("models/muschi/orks/muschi_ork_heavy_boy.mdl", "player")
ix.anim.SetModelClass("models/muschi/orks/muschi_ork_meganob.mdl", "player")
ix.anim.SetModelClass("models/muschi/orks/muschi_ork_strelyala.mdl", "player")
ix.anim.SetModelClass("models/muschi/orks/muschi_ork_wild.mdl", "player")
ix.anim.SetModelClass("models/kory/re8/re_heisenberg.mdl", "player")
ix.anim.SetModelClass("models/malkiax/kastelan/kastelan.mdl", "player")
ix.anim.SetModelClass("models/muschi/inquisition/muschi_inq_agent_techdude.mdl", "player")

ix.anim.SetModelClass("models/player/femaleguevesa.mdl", "player")
ix.anim.SetModelClass("models/player/firewarrior.mdl", "player")
ix.anim.SetModelClass("models/player/fwshasla.mdl", "player")
ix.anim.SetModelClass("models/gonzo/tau/fwshasla/fwshasla.mdl", "player")
ix.anim.SetModelClass("models/player/maleguevesa.mdl", "player")
ix.anim.SetModelClass("models/player/pathfinder.mdl", "player")

ix.anim.SetModelClass("models/moryak_eng.mdl", "player")
ix.anim.SetModelClass("models/moryak_gbt.mdl", "player")
ix.anim.SetModelClass("models/moryak_heavy.mdl", "player")
ix.anim.SetModelClass("models/moryak_med.mdl", "player")
ix.anim.SetModelClass("models/moryak_off.mdl", "player")

ix.anim.SetModelClass("models/necronimmortal.mdl", "player")
ix.anim.SetModelClass("models/necronlychguard.mdl", "player")
ix.anim.SetModelClass("models/necronwarriror.mdl", "player")

ix.anim.SetModelClass("models/nathaniel_grexus.mdl", "player")

ix.anim.SetModelClass("models/dizcordum/wh/eldar/Yuraine.mdl", "player")
ix.anim.SetModelClass("models/eldar_windrider.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/arlequin.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/farseer.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/avenger_lorian.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/banshees.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/bonesinger.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/dark_reapers.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/dragon_soprano.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/guardian_redactus.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/incubus_avery.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/ranger_mortis.mdl", "player")
ix.anim.SetModelClass("models/muschi/orks/muschi_ork_nob.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/scorpion_asura.mdl", "player")
ix.anim.SetModelClass("models/astartes/eldar/spiders_avery.mdl", "player")
ix.anim.SetModelClass("models/incub1.mdl", "player")
ix.anim.SetModelClass("models/gonzo/tau/fwshasla/fwshasla.mdl", "player")
ix.anim.SetModelClass("models/incub.mdl", "player")
ix.anim.SetModelClass("models/kabalite_warrior.mdl", "player")
ix.anim.SetModelClass("models/kabalite_warrior01.mdl", "player")
ix.anim.SetModelClass("models/kabalite_warrior02.mdl", "player")
ix.anim.SetModelClass("models/kabalite_warrior2.mdl", "player")
ix.anim.SetModelClass("models/void_master.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_techguard.mdl", "player")
ix.anim.SetModelClass("models/imperialguard_off.mdl", "player")
ix.anim.SetModelClass("models/lordcomissar.mdl", "player")
ix.anim.SetModelClass("models/heldane.mdl", "player")
ix.anim.SetModelClass("models/locke_mo.mdl", "player")
ix.anim.SetModelClass("models/ig_commander.mdl", "player")

ix.anim.SetModelClass("models/dizcordum/wk/ravenguard/rg_librarian.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/wk/ravenguard/rg_infiltrator_sergeant.mdl  ", "player")
ix.anim.SetModelClass("models/dizcordum/wk/ravenguard/rg_infiltrator_medic.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/wk/ravenguard/rg_infiltrator_captain.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/wk/ravenguard/rg_infiltrator.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/wk/ravenguard/rg_eliminator_sergeant.mdl", "player")
ix.anim.SetModelClass("models/dizcordum/wk/ravenguard/rg_eliminator.mdl", "player")
ix.anim.SetModelClass("models/gonzo/ebonygauntletsmarines/egscout/egscout.mdl", "player")
ix.anim.SetModelClass("models/gonzo/ebonygauntletsmarines/eggraviscpt/eggraviscpt.mdl", "player")
ix.anim.SetModelClass("models/gonzo/ebonygauntletsmarines/egdevastator/egdevastator.mdl", "player")
ix.anim.SetModelClass("models/gonzo/ebonygauntletsmarines/egchaplain/egchaplain.mdl", "player")
ix.anim.SetModelClass("models/gonzo/ebonygauntletsmarines/egapothecary/egapothecary.mdl", "player")

ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_ranger.mdl", "player")
ix.anim.SetModelClass("models/enginseer.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_ranger_mars.mdl", "player")
ix.anim.SetModelClass("models/muschi/mechanicus/muschi_admech_ranger_triplex.mdl", "player")

ix.anim.SetModelClass("models/molitor.mdl", "player")

function Schema:ZeroNumber(number, length)
	local amount = math.max(0, length - string.len(number))
	return string.rep("0", amount)..tostring(number)
end

function Schema:IsCombineRank(text, rank)
	return string.find(text, "[%D+]"..rank.."[%D+]")
end

do
	local CLASS = {}
	CLASS.color = Color(150, 100, 100)
	CLASS.format = "Dispatch broadcasts \"%s\""

	function CLASS:CanSay(speaker, text)
		if (!speaker:IsDispatch()) then
			speaker:NotifyLocalized("notAllowed")

			return false
		end
	end

	function CLASS:OnChatAdd(speaker, text)
		chat.AddText(self.color, string.format(self.format, text))
	end

	ix.chat.Register("dispatch", CLASS)
end

do
	local CLASS = {}
	CLASS.color = Color(75, 150, 50)
	CLASS.format = "%s radios in \"%s\""

	function CLASS:CanHear(speaker, listener)
		local character = listener:GetCharacter()
		local inventory = character:GetInventory()
		local bHasRadio = false

		for k, v in pairs(inventory:GetItemsByUniqueID("handheld_radio", true)) do
			if (v:GetData("enabled", false) and speaker:GetCharacter():GetData("frequency") == character:GetData("frequency")) then
				bHasRadio = true
				break
			end
		end

		return bHasRadio
	end

	function CLASS:OnChatAdd(speaker, text)
		text = speaker:IsCombine() and string.format("<:: %s ::>", text) or text
		chat.AddText(self.color, string.format(self.format, speaker:Name(), text))
	end

	ix.chat.Register("radio", CLASS)
end

do
	local CLASS = {}
	CLASS.color = Color(255, 255, 175)
	CLASS.format = "%s radios in \"%s\""

	function CLASS:GetColor(speaker, text)
		if (LocalPlayer():GetEyeTrace().Entity == speaker) then
			return Color(175, 255, 175)
		end

		return self.color
	end

	function CLASS:CanHear(speaker, listener)
		if (ix.chat.classes.radio:CanHear(speaker, listener)) then
			return false
		end

		local chatRange = ix.config.Get("chatRange", 280)

		return (speaker:GetPos() - listener:GetPos()):LengthSqr() <= (chatRange * chatRange)
	end

	function CLASS:OnChatAdd(speaker, text)
		text = speaker:IsCombine() and string.format("<:: %s ::>", text) or text
		chat.AddText(self.color, string.format(self.format, speaker:Name(), text))
	end

	ix.chat.Register("radio_eavesdrop", CLASS)
end

do
	local CLASS = {}
	CLASS.color = Color(175, 125, 100)
	CLASS.format = "%s requests \"%s\""

	function CLASS:CanHear(speaker, listener)
		return listener:IsCombine() or speaker:Team() == FACTION_GM
	end

	function CLASS:OnChatAdd(speaker, text)
		chat.AddText(self.color, string.format(self.format, speaker:Name(), text))
	end

	ix.chat.Register("request", CLASS)
end

do
	local CLASS = {}
	CLASS.color = Color(175, 125, 100)
	CLASS.format = "%s requests \"%s\""

	function CLASS:CanHear(speaker, listener)
		if (ix.chat.classes.request:CanHear(speaker, listener)) then
			return false
		end

		local chatRange = ix.config.Get("chatRange", 280)

		return (speaker:Team() == FACTION_CITIZEN and listener:Team() == FACTION_CITIZEN)
		and (speaker:GetPos() - listener:GetPos()):LengthSqr() <= (chatRange * chatRange)
	end

	function CLASS:OnChatAdd(speaker, text)
		chat.AddText(self.color, string.format(self.format, speaker:Name(), text))
	end

	ix.chat.Register("request_eavesdrop", CLASS)
end

do
	local CLASS = {}
	CLASS.color = Color(150, 125, 175)
	CLASS.format = "%s broadcasts \"%s\""

	function CLASS:CanSay(speaker, text)
		if (speaker:Team() != FACTION_GM) then
			speaker:NotifyLocalized("notAllowed")

			return false
		end
	end

	function CLASS:OnChatAdd(speaker, text)
		chat.AddText(self.color, string.format(self.format, speaker:Name(), text))
	end

	ix.chat.Register("broadcast", CLASS)
end