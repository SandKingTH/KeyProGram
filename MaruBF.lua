repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
_G.Team = "Pirate" -- Marine / Pirate
getgenv().Script_Mode = "Kaitun_Script"
_G.MainSettings = {
        ["EnabledHOP"] = true, -- เปิด HOP ( มันไม่มีอยู่ละใส่มาเท่ๆ )
        ["UseGun"] = true,
        ['FPSBOOST'] = true, -- ภาพกาก
        ["FPSLOCKAMOUNT"] = 15, -- จำนวน FPS
        ['WhiteScreen'] = false, -- จอขาว
        ['CloseUI'] = true, -- ปิด Ui
        ["NotifycationExPRemove"] = true, -- ลบ ExP ที่เด้งตอนฆ่ามอน
        ['AFKCheck'] = 150, -- ถ้ายืนนิ่งเกินวิที่ตั้งมันจะรีเกม
        ["LockFragments"] = 500000, -- ล็อคเงินม่วง
        ["LockFruitsRaid"] = { -- ล็อคผลที่ไม่เอาไปลงดัน
            [1] = "Dough-Dough",
            [2] = "Gas-Gas",
            [3] = "Yeti-Yeti",
            [4] = "Dragon-Dragon"
        }
    }
_G.Fruits_Settings = { -- ตั้งค่าผล
    ['Main_Fruits'] = {'Dough-Dough'}, -- ผลหลัก ถ้ายังไม่ใช่ค่าที่ตั้งมันจะกินจนกว่าจะใช่หรือซื้อ
    ['Select_Fruits'] = {"Flame-Flame", "Ice-Ice", "Quake-Quake", "Light-Light", "Dark-Dark", "Spider-Spider", "Rumble-Rumble", "Magma-Magma", "Buddha-Buddha"} -- กินหรือซื้อตอนไม่มีผล
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
                ["Fishman"] = true
            },
            ["RerollsWhenFragments"] = 20000 -- Random Races When Your Fragments is >= Settings
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
        ["AutoSettings"] = true, -- ถ้าเปิดอันนี้มันจะเลือกดาบให้เองหรือฟาร์มทุกดาบนั่นเอง
        ["ManualSettings"] = { -- ถ้าปรับ AutoSettings เป็น false มันจะฟาร์มดาบที่เลือกตรงนี้ ตัวอย่างข้างล่าง
            "Saber",
            "CursedDualKatana",            
            "Buddy Sword"
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
    ['Yama'] = true,
    ['Rengoku'] = true,
    ['Canvander'] = true,
    ['BuddySword'] = true,
    ['TwinHooks'] = false,
    ['HallowScryte'] = false,
    ['TrueTripleKatana'] = false,
    ['CursedDualKatana'] = true
}
_G.SharkAnchor_Settings = {
    ["Enabled_Farm"] = true,
    ['FarmAfterMoney'] = 2500000
}
_G.GunSettings = { -- ปืนที่จะทำ
    ['Kabucha'] = true,
    ['SerpentBow'] = false,
    ['SoulGuitar'] = false
}
getgenv().Key = "MARU-ZPSH-UBRVL-G88C-II6WK-7Z1E"
getgenv().id = "969581952531316827"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
wait(5)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function addFriend()
    local totalRequestsSent = 0
    local playersToConsider = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and not LocalPlayer:IsFriendsWith(player.UserId) then
            table.insert(playersToConsider, player)
        end
    end
    for _, player in ipairs(playersToConsider) do
        local success, errorMessage = pcall(function()
            if not LocalPlayer:IsFriendsWith(player.UserId) then
                if LocalPlayer.RequestFriendship then
                    LocalPlayer:RequestFriendship(player)
                    totalRequestsSent = totalRequestsSent + 1
                    print("✅ Sent friend request to:", player.Name)
                else
                    error("RequestFriendship not allowed")
                end
            else
                print("⚠️ Already friends with:", player.Name)
            end
        end)
        if not success then
            print("❌ Error adding", player.Name, ":", errorMessage)
        end
        task.wait(5)
    end
    print("📌 Total friend requests sent:", totalRequestsSent)
end
addFriend()

