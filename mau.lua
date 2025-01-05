local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 150, 0, 30)  -- Kích thước nhỏ hơn
label.Position = UDim2.new(1, -160, 0, 10)  -- Đặt ở góc trên bên phải
label.BackgroundTransparency = 1
label.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Màu chữ trắng
label.TextSize = 14  -- Chữ nhỏ
label.Text = "AFK Time: 00:00"
label.TextXAlignment = Enum.TextXAlignment.Right  -- Căn phải
label.Parent = screenGui

-- Lưu thời gian bắt đầu
local startTime = tick()

-- Cập nhật thời gian
local function updateTime()
    while true do
        local elapsedTime = tick() - startTime
        local minutes = math.floor(elapsedTime / 60)
        local seconds = math.floor(elapsedTime % 60)
        label.Text = string.format("AFK Time: %02d:%02d", minutes, seconds)
        
        wait(1)  -- Cập nhật mỗi giây
    end
end

-- Bắt đầu cập nhật thời gian
spawn(updateTime)

-- Đoạn mã Loadstring gốc của bạn, thực thi ngay lập tức khi script được chạy
spawn(function()
    local url = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/GameList.lua"
    local scriptContent = game:HttpGet(url)
    loadstring(scriptContent)()  -- Chạy mã từ URL
end)

-- Xử lý thực thi cho từng PlaceID
for PlaceID, Execute in pairs(Games) do
    if PlaceID == game.PlaceId then
        spawn(function()
            local url = Execute
            local scriptContent = game:HttpGet(url)
            loadstring(scriptContent)()  -- Chạy mã cho game cụ thể
        end)
    end
end
