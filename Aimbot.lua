-- Hiển thị thông báo với "SonBeo Hub" màu đỏ
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "Thông báo", 
    Text = "This script made by " .. "<font color='rgb(255,0,0)'>SonBeo Hub</font>", 
    Duration = 2
})

-- Đợi 2 giây rồi chạy script
task.delay(2, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/astrohub1/Aimlock-PvP/refs/heads/main/Blox-Fruits", true))()
end)
