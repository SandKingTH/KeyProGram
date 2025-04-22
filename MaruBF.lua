repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")

if game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam then
    repeat
        task.wait()
        local chooseTeamGui = game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam
        if game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Visible then
            for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                    b:Fire() 
                end
                v.Function()
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

local GodHuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
if GodHuman then
    if GodHuman == 1 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SandKingTH/RawScriptAll/refs/heads/main/Maru_mumu.lua"))()
    end
    wait(1)
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SandKingTH/RawScriptAll/refs/heads/main/Banana_mumu.lua"))()
        
end
