-- Tạo GUI chính
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local FarmButton = Instance.new("TextButton")
local HubButton = Instance.new("TextButton")
local FruitButton = Instance.new("TextButton")
local SkibidiButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")

-- Đặt GUI vào CoreGui để hiển thị
ScreenGui.Name = "ThanhDanHubMenu"
ScreenGui.Parent = game:GetService("CoreGui")

-- Tạo thông báo
TextLabel.Name = "Notification"
TextLabel.Parent = ScreenGui
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, -150, 0.05, 0)  -- Đưa thông báo lên gần trên cùng
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

-- Tạo phần tiêu đề ngoài ScrollingFrame
Title.Name = "Title"
Title.Parent = ScreenGui
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.5, -150, 0.15, 0)  -- Đưa tiêu đề lên gần trên
Title.Size = UDim2.new(0, 300, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Chọn một script"
Title.TextColor3 = Color3.fromRGB(255, 255, 0) -- Màu vàng
Title.TextSize = 24
Title.TextScaled = true

-- Tạo ScrollingFrame chứa các nút (có thể cuộn)
ScrollingFrame.Name = "ScrollingFrame"
ScrollingFrame.Parent = ScreenGui
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScrollingFrame.Position = UDim2.new(0.5, -150, 0.25, 0)  -- Đặt xuống dưới tiêu đề (còn gần trên)
ScrollingFrame.Size = UDim2.new(0, 300, 0, 300)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.ScrollBarThickness = 12

-- Tạo các nút và đặt các chức năng cho từng nút
local function createButton(name, text, position)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Parent = ScrollingFrame
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.Position = position
    button.Size = UDim2.new(0.8, 0, 0.2, 0)
    button.Font = Enum.Font.SourceSansBold
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 18
    return button
end

-- Tạo các nút
local FarmButton = createButton("FarmButton", "ko biết xài đc ko", UDim2.new(0.1, 0, 0.1, 0))
local HubButton = createButton("HubButton", "farm lv (Linux Team)", UDim2.new(0.1, 0, 0.35, 0))
local FruitButton = createButton("FruitButton", "Lụm trái(ThanhDan Hub)", UDim2.new(0.1, 0, 0.6, 0))
local SkibidiButton = createButton("SkibidiButton", "Skibidi(ấn thử đi)", UDim2.new(0.1, 0, 0.85, 0))

-- Chức năng khi nhấn các nút
FarmButton.MouseButton1Click:Connect(function()
    ScreenGui.Visible = false -- Ẩn giao diện
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NinoGod/Free-Script/main/Maru-x-Hub-Free.lua"))()
end)

HubButton.MouseButton1Click:Connect(function()
    ScreenGui.Visible = false -- Ẩn giao diện
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrashLua/BloxFruits/main/FreeScripts.lua"))()
end)

FruitButton.MouseButton1Click:Connect(function()
    ScreenGui.Visible = false -- Ẩn giao diện
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hsg251/bolocphut/refs/heads/main/fruits"))()
end)

SkibidiButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruit/refs/heads/main/Source.lua"))()
end)
