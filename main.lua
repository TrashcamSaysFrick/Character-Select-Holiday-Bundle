-- name: [CS] Holiday Bundle
-- description: A Template for Character Select to build off of when making your own pack!\n\n\\#ff7777\\This Mod Requires the Character Select Mod\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/blob/main/API-doc.md
]]

local E_MODEL_WHITEY = smlua_model_util_get_id("Whitey_geo")
local E_MODEL_HH = smlua_model_util_get_id("HH_geo")

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
    [CHAR_SOUND_HOOHOO] = 'EEE.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'This-Might-Be-Harder-Than-I-Thought.ogg',
    [CHAR_SOUND_OKEY_DOKEY] = nil,
    [CHAR_SOUND_ON_FIRE] = nil,
    [CHAR_SOUND_OOOF] = nil,
    [CHAR_SOUND_OOOF2] = nil,
    [CHAR_SOUND_PUNCH_HOO] = 'AAA.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'Wah.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'YEAAAH.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'Technical-Foul.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = nil,
    [CHAR_SOUND_WAAAOOOW] = nil,
    [CHAR_SOUND_WAH2] = nil,
    [CHAR_SOUND_WHOA] = nil,
    [CHAR_SOUND_YAHOO] = 'Dont-Forget.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'Dont-Forget.ogg', 'Wah.ogg', 'YEAAAH.ogg'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'YEAAAH.ogg', 'Wah.ogg', 'AAA.ogg'},
    [CHAR_SOUND_YAWNING] = nil,

if _G.charSelectExists then
    CT_WHITEY = _G.charSelect.character_add("Whitey", {"Whitey Duvall from Adam Sandler's Eight Crazy Nights", "is now here."}, "Trashcam", {r = 255, g = 200, b = 200}, E_MODEL_WHITEY, CT_MARIO)
    CT_HH = _G.charSelect.character_add("HH", {"Save on everything at Christmas in July", "H-H-H-H-H-H-HHGregg", "Panasonic Blu-Ray, 99 dollars", "H-H-H-H-H-H-HHGregg", "32-inch LCD TV, 299", "LG 42-inch HDTV, 489", "Everything's on sale during Christmas in July", "H-H-H-H", "A snowball in July?", "HHGregg!"}, "Garlicker", {r = 255, g = 200, b = 200}, E_MODEL_HH, CT_MARIO)

    _G.charSelect.character_add_voice(E_MODEL_WHITEY, VOICETABLE_WHITEY)
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_WHITEY then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_WHITEY then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end
