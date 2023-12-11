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
    [CHAR_SOUND_ATTACKED] = 'NES-Hit.ogg',
    [CHAR_SOUND_DOH] = 'NES-Bump.ogg',
    [CHAR_SOUND_DROWNING] = 'NES-Die.ogg',
    [CHAR_SOUND_DYING] = 'NES-Die.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'NES-Squish.ogg',
    [CHAR_SOUND_HAHA] = 'NES-1up.ogg',
    [CHAR_SOUND_HAHA_2] = 'NES-1up.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'NES-Flagpole.ogg',
    [CHAR_SOUND_HOOHOO] = 'EEE.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'This Might Be Harder Than I Thought.mp3',
    [CHAR_SOUND_OKEY_DOKEY] = 'NES-1up.ogg',
    [CHAR_SOUND_ON_FIRE] = 'NES-Enemy_Fire.ogg',
    [CHAR_SOUND_OOOF] = 'NES-Hit.ogg',
    [CHAR_SOUND_OOOF2] = 'NES-Hit.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'AAA.mp3',
    [CHAR_SOUND_PUNCH_WAH] = 'Wah.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'YEAAAH.mp3',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'Technical Foul.mp3',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'NES-Item.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'NES-Vine.ogg',
    [CHAR_SOUND_WAH2] = 'NES-Kick.ogg',
    [CHAR_SOUND_WHOA] = 'NES-Item.ogg',
    [CHAR_SOUND_YAHOO] = 'Dont Forget.mp3',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'Dont Forget.mp3', 'Wah.mp3', 'YEAAAH.mp3'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'YEAAAH.mp3', 'Wah.mp3', 'AAA.mp3'},
    [CHAR_SOUND_YAWNING] = 'NES-Pause.ogg',
}

-- function sample(name)
--     return sample2(name)
-- end

-- function stream(name)
--     return stream2(name)
-- end

-- function sample2(name)
--     return audio_sample_load(name)
-- end

-- function stream2(name)
--     return audio_stream_load(name)
-- end

if _G.charSelectExists then
    CT_WHITEY = _G.charSelect.character_add("Whitey", {"Whitey Duvall from Adam Sandler's Eight Crazy Nights", "is now here."}, "Trashcam", {r = 255, g = 200, b = 200}, E_MODEL_WHITEY, CT_MARIO)
    CT_HH = _G.charSelect.character_add("HH", {"Save on everything at Christmas in July", "H-H-H-H-H-H-HHGregg", "Panasonic Blu-Ray, 99 dollars", "H-H-H-H-H-H-HHGregg", "32-inch LCD TV, 299", "LG 42-inch HDTV, 489", "Everything's on sale during Christmas in July", "H-H-H-H", "A snowball in July?", "HHGregg!"}, "Garlicker", {r = 255, g = 200, b = 200}, E_MODEL_HH, CT_MARIO)
    -- the following must be hooked for each character added
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