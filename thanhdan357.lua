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
TextLabel.Text = "có một tin bùn=("
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30
TextLabel.TextStrokeTransparency = 0.5
TextLabel.TextScaled = true

-- Đợi 5 giây trước khi thay đổi thông báo
wait(2)

-- Thay đổi thông báo thành "Đã tải xong"
TextLabel.Text = "mệt quá không làm bên bloxfruits nx=("

--tiếp
TextLabel.Text = "vì tao lười nên lấy đại cái trên mạng"

-- Hiển thị thông báo "Đã tải xong" trong 2 giây rồi xóa
wait(3)
TextLabel:Destroy()

-- Bắt đầu script
repeat task.wait() until game:IsLoaded() -- Chờ đến khi game được tải xong
local TablePlace = {7449423635, 2753915549, 4442272183} -- Danh sách các PlaceId hợp lệ
game:GetService("StarterGui"):SetCore("SendNotification", { -- Gửi thông báo cho người chơi
    Title = "thông báo", -- Tiêu đề thông báo
    Text = "cái này là trên mạng", -- Nội dung thông báo
    Icon = "rbxassetid://113954644931303", -- Biểu tượng thông báo (tuỳ chọn)
    Duration = 5 -- Thời gian hiển thị thông báo (10 giây)
})

if table.find(TablePlace, game.PlaceId) then -- Kiểm tra xem game.PlaceId có nằm trong danh sách hợp lệ không
    getgenv().Game = "BF" -- Thiết lập biến Game là "BF"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/BF-New.lua"))() -- Tải và chạy mã từ URL
else
    game.Players.LocalPlayer:Kick("Xin lỗi, nhưng thiết bị của bạn không hỗ trợ!") -- Nếu không hỗ trợ, đuổi người chơi
end
