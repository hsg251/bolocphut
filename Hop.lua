-- Load Rayfield UI
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "SonBeo Hub",
   LoadingTitle = "Đang khởi động SonBeo...",
   LoadingSubtitle = "Hack có tâm, vui có tầm",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "SonBeoHubConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "",
      RememberJoins = false
   },
   KeySystem = false,
})

local HopTab = Window:CreateTab("Hop", 4483362458)
HopTab:CreateSection("Các lựa chọn")

-- Rip Indra
HopTab:CreateButton({
    Name = "Rip Indra",
    Callback = function()
        getgenv().Mode = "rip_indra"
        getgenv().Team = "Marines"
        repeat task.wait() until game:IsLoaded()
            and game:GetService("Players")
            and game.Players.LocalPlayer
            and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f0952c4a5f3db9e01f4dbd099c1f9b3c.lua"))()
    end,
})

-- Pull Lever
HopTab:CreateButton({
    Name = "Pull Lever",
    Callback = function()
        getgenv().Mode = "Pull Lever"
        getgenv().Team = "Marines"
        repeat task.wait() until game:IsLoaded()
            and game:GetService("Players")
            and game.Players.LocalPlayer
            and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f0952c4a5f3db9e01f4dbd099c1f9b3c.lua"))()
    end,
})

-- Dough King
HopTab:CreateButton({
    Name = "Dough King",
    Callback = function()
        getgenv().Mode = "Dough King"
        getgenv().Team = "Marines"
        repeat task.wait() until game:IsLoaded()
            and game:GetService("Players")
            and game.Players.LocalPlayer
            and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f0952c4a5f3db9e01f4dbd099c1f9b3c.lua"))()
    end,
})

-- Darkbeard
HopTab:CreateButton({
    Name = "Darkbeard",
    Callback = function()
        getgenv().Mode = "Darkbeard"
        getgenv().Team = "Marines"
        repeat task.wait() until game:IsLoaded()
            and game:GetService("Players")
            and game.Players.LocalPlayer
            and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f0952c4a5f3db9e01f4dbd099c1f9b3c.lua"))()
    end,
})

-- TOTS
HopTab:CreateButton({
    Name = "TOTS",
    Callback = function()
        getgenv().Mode = "TOTS"
        getgenv().Team = "Marines"
        repeat task.wait() until game:IsLoaded()
            and game:GetService("Players")
            and game.Players.LocalPlayer
            and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f0952c4a5f3db9e01f4dbd099c1f9b3c.lua"))()
    end,
})
