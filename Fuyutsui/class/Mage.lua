local _, fu = ...
if fu.classId ~= 8 then return end
local creat = fu.updateOrCreatTextureByIndex

fu.HarmfulSpellId = 116 -- 寒冰箭

fu.heroSpell = {
    [443739] = 1, -- 疾咒师
    [448601] = 2, -- 日怒
    [431044] = 3, -- 霜火
}

function fu.updateSpecInfo()
    local specIndex = C_SpecializationInfo.GetSpecialization()
    fu.powerType = nil
    fu.blocks = nil
    fu.group_blocks = nil
    fu.assistant_spells = nil
    if specIndex == 1 then

    elseif specIndex == 2 then

    elseif specIndex == 3 then
        fu.powerType = "MANA"
        fu.blocks = {
            assistant = 11,
            target_valid = 12,
            failedSpell = 13,
            hero_talent = 14,
            encounterID = 15,
            difficultyID = 16,
            castingSpell = 17,
            enemy_count = 24,
            auras = {
                ["热能真空"] = {
                    index = 18,
                    auraRef = fu.auras["热能真空"],
                    showKey = "remaining",
                },
                ["冰川尖刺！"] = {
                    index = 19,
                    auraRef = fu.updateAuras.byIcon[116],
                    showKey = "isIcon",
                    name = "冰川尖刺！",
                },
                ["冰冷智慧"] = {
                    index = 20,
                    auraRef = fu.auras["冰冷智慧"],
                    showKey = "remaining",
                },
                ["冰冻之雨"] = {
                    index = 21,
                    auraRef = fu.auras["冰冻之雨"],
                    showKey = "remaining",
                },
                ["寒冰指"] = {
                    index = 22,
                    auraRef = fu.auras["寒冰指"],
                    showKey = "remaining",
                },
                ["寒冰指层数"] = {
                    index = 23,
                    auraRef = fu.auras["寒冰指"],
                    showKey = "count",
                },
            },
            spell_cd = {
                [475] = { index = 31, name = "解除诅咒" },
                [110959] = { index = 32, name = "强化隐形术", failed = true },
                [122] = { index = 33, name = "冰霜新星", failed = true },
                [2139] = { index = 34, name = "法术反制" },
                [31661] = { index = 35, name = "龙息术", failed = true },
                [1248829] = { index = 36, name = "暴风雪", failed = true },
                [190356] = { index = 37, name = "暴风雪", failed = true },
                [84714] = { index = 38, name = "寒冰宝珠" },
                [205021] = { index = 39, name = "冰霜射线" },
                [11426] = { index = 40, name = "寒冰护体" },
                [44614] = { index = 41, name = "冰风暴" },
            },
            spell_charge = {
                [44614] = { index = 42, name = "冰风暴" },
            },
        }
        fu.assistant_spells = {
            [116] = 1,    -- 寒冰箭
            [199786] = 2, -- 冰川尖刺
            [30455] = 3,  -- 冰枪术
            [205021] = 4, -- 冰霜射线
            [44614] = 5,  -- 冰风暴
            [1459] = 6,   -- 奥术智慧
            [84714] = 7,  -- 寒冰宝珠
        }
    end
end

function fu.CreateClassMacro()
    local dynamicSpells = { "解除诅咒" }
    local specialSpells = {}
    local staticSpells = {
        [1] = "寒冰箭",
        [2] = "强化隐形术",
        [3] = "冰霜新星",
        [4] = "法术反制",
        [5] = "变形术",
        [6] = "奥术智慧",
        [7] = "法术吸取",
        [8] = "冰枪术",
        [9] = "寒冰宝珠",
        [10] = "冰霜射线",
        [11] = "冰风暴",
        [12] = "寒冰护体",
        [13] = "暴风雪",
        [14] = "龙息术",
    }
    fu.CreateMacro(dynamicSpells, staticSpells, specialSpells)
end
