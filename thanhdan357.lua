-- Tạo GUI chính
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame") -- Dùng ScrollingFrame thay vì Frame thông thường
local FarmButton = Instance.new("TextButton")
local HubButton = Instance.new("TextButton")
local FruitButton = Instance.new("TextButton")

-- Đặt GUI vào CoreGui để hiển thị
ScreenGui.Name = "ThanhDanHubMenu"
ScreenGui.Parent = game:GetService("CoreGui")

-- Tạo thông báo
TextLabel.Name = "Notification"
TextLabel.Parent = ScreenGui
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, -150, 0.1, 0)
TextLabel.Size = UDim2.new(0, 300, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "ThanhDan Hub x Linux Team"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30
TextLabel.TextStrokeTransparency = 0.5
TextLabel.TextScaled = true

-- Hiển thị thông báo trong 3 giây rồi xóa
wait(3)
TextLabel:Destroy()

-- Tạo ScrollingFrame chứa các nút (có thể cuộn)
ScrollingFrame.Name = "ScrollingFrame"
ScrollingFrame.Parent = ScreenGui
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScrollingFrame.Position = UDim2.new(0.5, -150, 0.2, 0)
ScrollingFrame.Size = UDim2.new(0, 300, 0, 300)  -- Tăng chiều cao để đủ không gian cho các nút
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.ScrollBarThickness = 12 -- Đặt độ dày thanh cuộn

-- Tiêu đề menu
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Parent = ScrollingFrame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Chọn một script"
Title.TextColor3 = Color3.fromRGB(255, 255, 0) -- Màu vàng
Title.TextSize = 24
Title.TextScaled = true

-- Nút "Farm Rương"
FarmButton.Name = "FarmButton"
FarmButton.Parent = ScrollingFrame
FarmButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FarmButton.Position = UDim2.new(0.1, 0, 0.3, 0)
FarmButton.Size = UDim2.new(0.8, 0, 0.2, 0)
FarmButton.Font = Enum.Font.SourceSansBold
FarmButton.Text = "ko biết xài đc ko"
FarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmButton.TextSize = 18

-- Nút "ThanhDan Hub (chưa update hẳn)"
HubButton.Name = "HubButton"
HubButton.Parent = ScrollingFrame
HubButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HubButton.Position = UDim2.new(0.1, 0, 0.55, 0)
HubButton.Size = UDim2.new(0.8, 0, 0.2, 0)
HubButton.Font = Enum.Font.SourceSansBold
HubButton.Text = "farm lv (Linux Team)"
HubButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HubButton.TextSize = 18

-- Nút "Lụm trái"
FruitButton.Name = "FruitButton"
FruitButton.Parent = ScrollingFrame
FruitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FruitButton.Position = UDim2.new(0.1, 0, 0.8, 0)
FruitButton.Size = UDim2.new(0.8, 0, 0.2, 0)
FruitButton.Font = Enum.Font.SourceSansBold
FruitButton.Text = "Lụm trái(ThanhDan Hub)"
FruitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FruitButton.TextSize = 18

-- Nút skibidi toilet
SkibidiButton.Name = "HubButton"
SkibidiButton.Parent = ScrollingFrame
SkibidiButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SkibidiButton.Position = UDim2.new(0.1, 0, 0.55, 0)
SkibidiButton.Size = UDim2.new(0.8, 0, 0.2, 0)
SkibidiButton.Font = Enum.Font.SourceSansBold
SkibidiButton.Text = "Skibidi(ấn thử đi)"
SkibidiButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SkibidiButton.TextSize = 18

-- Chức năng khi nhấn các nút
FarmButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Xóa giao diện
    loadstring(gameHttpGet("https://raw.githubusercontent.com/NinoGod/Free-Script/main/Maru-x-Hub-Free.lua"))()
end)

HubButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Xóa giao diện
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrashLua/BloxFruits/main/FreeScripts.lua"))()
end)

FruitButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Xóa giao diện
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hsg251/bolocphut/refs/heads/main/fruits"))()
end)

SkibidiButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruit/refs/heads/main/Source.lua"))()
end)        
