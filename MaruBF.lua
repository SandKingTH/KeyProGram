repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
_G.Team = "Pirate"
_G.KAITUN_SCRIPT = true
_G.MainSettings = {
        ["EnabledHOP"] = false,
        ['FPSBOOST'] = true,
        ["FPSLOCKAMOUNT"] = 10
        ['WhiteScreen'] = false,
        ['CloseUI'] = false,
        ["NotifycationExPRemove"] = true,
        ['AFKCheck'] = 150,
        ["LockFragments"] = 20000,
        ["LockFruitsRaid"] = {
            [1] = "Kitsune-Kitsune",
            [2] = "Leopard-Leopard",
            [3] = "Dragon-Dragon",
            [4] = "Spirit-Spirit",
            [5] = "Control-Control",
            [6] = "Venom-Venom",
            [7] = "Shadow-Shadow",
            [8] = "Dough-Dough",
            [9] = "T-Rex-T-Rex",
            [10] = "Mammoth-Mammoth",
            [11] = "Gravity-Gravity",
            [12] = "Phoenix-Phoenix",
            [13] = "Yeti-Yeti",
            [14] = "Gas-Gas"
        }
    }
_G.Fruits_Settings = {
    ['Main_Fruits'] = {"Blizzard-Blizzard", "Dough-Dough"},
    ['Select_Fruits'] = {"Ice-Ice", "Quake-Quake", "Light-Light", "Dark-Dark", "Spider-Spider", "Rumble-Rumble", "Magma-Magma"}
}
_G.Quests_Settings = { -- ตั้งค่าเควสหลักๆ
    ['Rainbow_Haki'] = true,
    ["MusketeerHat"] = true,
    ["PullLever"] = true,
    ['DoughQuests_Mirror'] = {
        ['Enabled'] = true,
        ['UseFruits'] = true
    }        
}
_G.Races_Settings = { -- ตั้งค่าเผ่า
    ['Race'] = {
        ['EnabledEvo'] = true,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = { -- Select Races U want
                ["Mink"] = true,
                ["Human"] = true,
                ["Fishman"] = true,
                ["Skypier"] = true
            },
            ["RerollsWhenFragments"] = 3000 -- Random Races When Your Fragments is >= Settings
        }
    }
}
_G.Settings_Melee = { -- หมัดที่จะทำ
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.FarmMastery_Settings = {
    ['Melee'] = true,
    ['Sword'] = true,
    ['DevilFruits'] = true,
    ['Select_Swords'] = {
        ["AutoSettings"] = false, -- ถ้าเปิดอันนี้มันจะเลือกดาบให้เองหรือฟาร์มทุกดาบนั่นเอง
        ["ManualSettings"] = { -- ถ้าปรับ AutoSettings เป็น false มันจะฟาร์มดาบที่เลือกตรงนี้ ตัวอย่างข้างล่าง
            "Saber",
            "HallowScryte",
            "Yama",
            "Tushita",
            "Cursed Dual Katana",
            "Pole"
        }
    }
}
_G.SwordSettings = { -- ดาบที่จะทำ
    ['Saber'] = true,
    ["Pole"] = true,
    ['MidnightBlade'] = true,
    ['Shisui'] = false,
    ['Saddi'] = false,
    ['Wando'] = false,
    ['Yama'] = false,
    ['Rengoku'] = true,
    ['Canvander'] = true,
    ['BuddySword'] = true,
    ['TwinHooks'] = true,
    ['HallowScryte'] = true,
    ['TrueTripleKatana'] = true,
    ['CursedDualKatana'] = true
}
_G.GunSettings = { -- ปืนที่จะทำ
    ['Kabucha'] = true,
    ['SerpentBow'] = true,
    ['SoulGuitar'] = true
}

getgenv().Key = "MARU-PKNS-GKA8A-FE95-9W56G-J0JK"
getgenv().id = "655665822416764949"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/refs/heads/main/Specials"))()

task.spawn(function()
repeat task.wait() until game:IsLoaded()
__script__host = "http://110.164.203.137/api/account"
__script__token = "Peerapat"
__script__machine = "PC-1"
loadstring(game:HttpGet'https://raw.githubusercontent.com/SandKingTH/KeyProGram/refs/heads/main/ServerBF.lua'){__script__host, __script__token, __script__machine}
end)
