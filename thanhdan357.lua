-- Tạo GUI chính
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
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
TextLabel.Text = "ThanhDan Hub say hello!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30
TextLabel.TextStrokeTransparency = 0.5
TextLabel.TextScaled = true

-- Hiển thị thông báo trong 3 giây rồi xóa
wait(3)
TextLabel:Destroy()

-- Tạo Frame chứa các nút
Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.5, -150, 0.2, 0)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.BorderSizePixel = 0

-- Tiêu đề menu
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Chọn một script"
Title.TextColor3 = Color3.fromRGB(255, 255, 0) -- Màu vàng
Title.TextSize = 24
Title.TextScaled = true

-- Nút "Farm Rương"
FarmButton.Name = "FarmButton"
FarmButton.Parent = Frame
FarmButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FarmButton.Position = UDim2.new(0.1, 0, 0.3, 0)
FarmButton.Size = UDim2.new(0.8, 0, 0.2, 0)
FarmButton.Font = Enum.Font.SourceSansBold
FarmButton.Text = "Farm rương"
FarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmButton.TextSize = 18

-- Nút "ThanhDan Hub (chưa update hẳn)"
HubButton.Name = "HubButton"
HubButton.Parent = Frame
HubButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HubButton.Position = UDim2.new(0.1, 0, 0.55, 0)
HubButton.Size = UDim2.new(0.8, 0, 0.2, 0)
HubButton.Font = Enum.Font.SourceSansBold
HubButton.Text = "ThanhDan Hub (chưa update hẳn)"
HubButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HubButton.TextSize = 18

-- Nút "Lụm trái"
FruitButton.Name = "FruitButton"
FruitButton.Parent = Frame
FruitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FruitButton.Position = UDim2.new(0.1, 0, 0.8, 0)
FruitButton.Size = UDim2.new(0.8, 0, 0.2, 0)
FruitButton.Font = Enum.Font.SourceSansBold
FruitButton.Text = "Lụm trái"
FruitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FruitButton.TextSize = 18

-- Chức năng khi nhấn các nút
FarmButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Xóa giao diện
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hsg251/bolocphut/refs/heads/main/farmruong/thanhdanhub"))()
end)

HubButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Xóa giao diện
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hsg251/bolocphut/refs/heads/main/thanhdan357.lua"))()
end)

FruitButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Xóa giao diện
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hsg251/bolocphut/refs/heads/main/fruits"))()
end)
