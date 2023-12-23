-- name: [CS] Holiday Bundle
-- description: A Template for Character Select to build off of when making your own pack!\n\n\\#ff7777\\This Mod Requires the Character Select Mod\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/blob/main/API-doc.md
]]

local E_MODEL_WHITEY = smlua_model_util_get_id("Whitey_geo")
local E_MODEL_HH = smlua_model_util_get_id("HH_geo")
local E_MODEL_JYUMI = smlua_model_util_get_id("JYumi_geo")

local TEXT_MOD_NAME = "Holiday Bundle"

local VOICETABLE_WHITEY = {
    [CHAR_SOUND_ATTACKED] = nil,
    [CHAR_SOUND_DOH] = nil,
    [CHAR_SOUND_DROWNING] = nil,
    [CHAR_SOUND_DYING] = nil,
    [CHAR_SOUND_GROUND_POUND_WAH] = nil,
    [CHAR_SOUND_HAHA] = nil,
    [CHAR_SOUND_HAHA_2] = nil,
    [CHAR_SOUND_HERE_WE_GO] = nil,
    [CHAR_SOUND_HOOHOO] = 'EEE.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'This-Might-Be-Harder-Than-I-Thought.mp3',
    [CHAR_SOUND_OKEY_DOKEY] = nil,
    [CHAR_SOUND_ON_FIRE] = nil,
    [CHAR_SOUND_OOOF] = nil,
    [CHAR_SOUND_OOOF2] = nil,
    [CHAR_SOUND_PUNCH_HOO] = 'AAA.mp3',
    [CHAR_SOUND_PUNCH_WAH] = 'Wah.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'YEAAAH.mp3',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'Technical-Foul.mp3',
    [CHAR_SOUND_TWIRL_BOUNCE] = nil,
    [CHAR_SOUND_WAAAOOOW] = nil,
    [CHAR_SOUND_WAH2] = nil,
    [CHAR_SOUND_WHOA] = nil,
    [CHAR_SOUND_YAHOO] = 'Dont-Forget.mp3',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'Dont-Forget.mp3', 'Wah.mp3', 'YEAAAH.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'YEAAAH.mp3', 'Wah.mp3', 'AAA.mp3'},
    [CHAR_SOUND_YAWNING] = nil,
}
local VOICETABLE_JYUMI = {
   [CHAR_SOUND_ATTACKED] = 'YumiHurtHard.ogg',
--    [CHAR_SOUND_COUGHING1] = 'empty',
--    [CHAR_SOUND_COUGHING2] = 'empty',
--    [CHAR_SOUND_COUGHING3] = 'empty',
--    [CHAR_SOUND_DOH] = 'empty',
    [CHAR_SOUND_DROWNING] = 'YumiDrown.ogg',
    [CHAR_SOUND_DYING] = 'YumiDrown.ogg',
    [CHAR_SOUND_EEUH] = 'YumiPickUp.ogg',
--   [CHAR_SOUND_GAME_OVER] = 'empty',
--    [CHAR_SOUND_GROUND_POUND_WAH] = 'empty',
--    [CHAR_SOUND_HAHA] = 'empty',
--    [CHAR_SOUND_HAHA_2] = 'empty',
--    [CHAR_SOUND_HELLO] = 'empty',
    [CHAR_SOUND_HERE_WE_GO] = 'YumiWin.ogg',
--    [CHAR_SOUND_HOOHOO] = 'empty',
--    [CHAR_SOUND_HRMM] = 'empty',
    [CHAR_SOUND_IMA_TIRED] = 'YumiTired.ogg',
    [CHAR_SOUND_LETS_A_GO] = 'YumiLetsGo.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'YumiMamaMia.ogg',
--    [CHAR_SOUND_OKEY_DOKEY] = 'empty',
    [CHAR_SOUND_ON_FIRE] = 'YumiBurn.ogg',
--    [CHAR_SOUND_OOOF] = 'empty',
--    [CHAR_SOUND_OOOF2] = 'empty',
--    [CHAR_SOUND_PANTING] = 'empty',
--    [CHAR_SOUND_PANTING_COLD] = 'empty',
--    [CHAR_SOUND_PRESS_START_TO_PLAY] = 'empty',
--    [CHAR_SOUND_PUNCH_HOO] = 'empty',
--    [CHAR_SOUND_PUNCH_WAH] = 'empty',
--    [CHAR_SOUND_PUNCH_YAH] = 'empty',
--    [CHAR_SOUND_SNORING1] = 'empty',
--    [CHAR_SOUND_SNORING2] = 'empty',
--    [CHAR_SOUND_SNORING3] = {'empty', 'empty', 'empty'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'YumiSoLong.ogg',
--    [CHAR_SOUND_TWIRL_BOUNCE] = 'empty',
    [CHAR_SOUND_UH] = 'YumiHurt.ogg',
    [CHAR_SOUND_UH2] = 'YumiHurtHard.ogg',
--    [CHAR_SOUND_UH2_2] = 'empty',
    [CHAR_SOUND_WAAAOOOW] = 'YumiScreamFall.ogg',
--    [CHAR_SOUND_WAH2] = 'empty',
    [CHAR_SOUND_WHOA] = 'YumiPickUp.ogg',
--    [CHAR_SOUND_YAHOO] = 'empty',
--    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'empty', 'empty', 'empty'},
--    [CHAR_SOUND_YAH_WAH_HOO] = {'empty', 'empty', 'empty'},
--    [CHAR_SOUND_YAWNING] = 'empty',
}

if _G.charSelectExists then
    CT_WHITEY = _G.charSelect.character_add("Whitey", {"Whitey Duvall from Adam Sandler's Eight Crazy Nights", "is now here."}, "Trashcam", {r = 255, g = 200, b = 200}, E_MODEL_WHITEY, CT_MARIO)
    CT_HH = _G.charSelect.character_add("HH", {"Save on everything at Christmas in July", "H-H-H-H-H-H-HHGregg", "Panasonic Blu-Ray, 99 dollars", "H-H-H-H-H-H-HHGregg", "32-inch LCD TV, 299", "LG 42-inch HDTV, 489", "Everything's on sale during Christmas in July", "H-H-H-H", "A snowball in July?", "HHGregg!"}, "Garlicker", {r = 255, g = 200, b = 200}, E_MODEL_HH, CT_MARIO)
    CT_JYUMI = _G.charSelect.character_add("Jolly Yumi", {"A girl from New York.", "She seems to feel pretty", "jolly today."}, "Frijoles.z64", {r = 54, g = 91, b = 212}, E_MODEL_JYUMI, CT_LUIGI)
    -- the following must be hooked for each character added
    _G.charSelect.character_add_voice(E_MODEL_WHITEY, VOICETABLE_WHITEY)
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_WHITEY then return _G.charSelect.voice.sound(m, sound) end
    _G.charSelect.character_add_voice(E_MODEL_JYUMI, VOICETABLE_JYUMI)
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_JYUMI then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_WHITEY then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end
