-- Tạo GUI chính
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

-- Đặt GUI vào CoreGui để hiển thị
ScreenGui.Name = "ThanhDanHubMenu"
ScreenGui.Parent = game:GetService("CoreGui")

-- Tạo thông báo "Script đang tải"
TextLabel.Name = "Notification"
TextLabel.Parent = ScreenGui
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, -150, 0.05, 0)  -- Đưa thông báo lên gần trên cùng
TextLabel.Size = UDim2.new(0, 300, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Script đang tải, vui lòng chờ..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30
TextLabel.TextStrokeTransparency = 0.5
TextLabel.TextScaled = true

-- Đợi 5 giây trước khi thay đổi thông báo
wait(5)

-- Thay đổi thông báo thành "Đã tải xong"
TextLabel.Text = "ThanhDan Hub x Linux Team"

-- Hiển thị thông báo "Đã tải xong" trong 2 giây rồi xóa
wait(2)
TextLabel:Destroy()

-- Thực thi script từ URL
loadstring(game:HttpGet("https://raw.githubusercontent.com/FlashScripts0/BloxFruits/main/BloxFruits"))()
