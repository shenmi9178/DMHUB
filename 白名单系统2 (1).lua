local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["nknmk88_l"] = true,
    ["玩家用户名"] = true,
    ["玩家用户名"] = true,
    ["玩家用户名"] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/shenmi9178/DMHUB/refs/heads/main/DM%20HUB.lua"))()
else
    localPlayer:Kick("你没有被加入白名单，请进群获取白名单群:472901387")
end