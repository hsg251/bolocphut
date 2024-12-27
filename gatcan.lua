-- Khởi tạo GUI cơ bản
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

-- Tạo nút để bật/tắt menu
local ToggleButton = Instance.new("TextButton")

local StatusList = {
    {Name = "Mũ Admin", StatusLabel = nil, CheckFunction = function()
        return game.Players.LocalPlayer:FindFirstChild("AdminHat")
    end, TaskFunction = function()
        print("Đang tự động đi lấy Mũ Admin...")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 50, -200)
        wait(5)
    end},

    {Name = "Mảnh Gương", StatusLabel = nil, CheckFunction = function()
        return game.Players.LocalPlayer:FindFirstChild("MirrorFragment")
    end, TaskFunction = function()
        print("Đang tự động đi lấy Mảnh Gương...")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(200, 60, -300)
        wait(5)
    end},

    {Name = "Gạt Cần", StatusLabel = nil, CheckFunction = function()
        local lever = game.Workspace:FindFirstChild("Lever")
        return lever and lever:IsA("BasePart")
    end, TaskFunction = function()
        print("Đang tự động đi gạt cần...")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(300, 70, -400)
        wait(5)
    end},

    {Name = "Đảo Kỳ Bí", StatusLabel = nil, CheckFunction = function()
        local mysticIsland = game.Workspace:FindFirstChild("MysticIsland")
        return mysticIsland and mysticIsland:IsA("Model")
    end, TaskFunction = function()
        print("Đang tự động đi đến Đảo Kỳ Bí...")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(400, 80, -500)
        wait(5)
    end},

    {Name = "Tộc V3", StatusLabel = nil, CheckFunction = function()
        return game.Players.LocalPlayer:FindFirstChild("V3")
    end, TaskFunction = function()
        print("Đang tự động đi lấy Tộc V3...")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500, 90, -600)
        wait(5)
    end}
}

-- Cài đặt GUI
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.1, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 300, 0, 400)
Frame.BorderSizePixel = 0
Frame.Visible = false -- Menu mặc định ẩn đi

Title.Parent = Frame
Title.Text = "ThanhDan Hub" -- Đổi tên hub thành ThanhDan Hub
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Size = UDim2.new(1, 0, 0.15, 0)

-- Tạo các trạng thái và mục hiển thị
for i, item in ipairs(StatusList) do
    local StatusLabel = Instance.new("TextLabel")
    StatusLabel.Parent = Frame
    StatusLabel.Text = item.Name .. ":"
    StatusLabel.Font = Enum.Font.SourceSans
    StatusLabel.TextSize = 18
    StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    StatusLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    StatusLabel.Position = UDim2.new(0.1, 0, 0.15 + i * 0.1, 0)
    StatusLabel.Size = UDim2.new(0.8, 0, 0.1, 0)

    item.StatusLabel = StatusLabel
end

-- Cài đặt nút ToggleButton để bật/tắt menu
ToggleButton.Parent = game.Players.LocalPlayer.PlayerGui -- Nút sẽ xuất hiện trong PlayerGui
ToggleButton.Size = UDim2.new(0, 100, 0, 50)
ToggleButton.Position = UDim2.new(0.1, 0, 0.8, 0)
ToggleButton.Text = "TDH"
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

-- Sự kiện nhấn vào ToggleButton để bật/tắt menu
ToggleButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible -- Lật trạng thái hiển thị menu
end)

-- Hàm hiển thị thông báo "Cảm ơn vì đã sử dụng"
function showThanksMessage()
    local thankYouLabel = Instance.new("TextLabel")
    thankYouLabel.Parent = ScreenGui
    thankYouLabel.Text = "Bé tập viết code"
    thankYouLabel.Font = Enum.Font.SourceSans
    thankYouLabel.TextSize = 30
    thankYouLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    thankYouLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    thankYouLabel.Position = UDim2.new(0.5, -150, 0.4, 0)
    thankYouLabel.Size = UDim2.new(0, 300, 0, 50)
    thankYouLabel.TextAlign = Enum.TextAlign.Center
    
    -- Ẩn thông báo sau 2 giây
    wait(2)
    thankYouLabel:Destroy() 
end

-- Thực hiện thông báo trước khi bắt đầu làm nhiệm vụ
spawn(function()
    showThanksMessage() -- Hiển thị thông báo "Cảm ơn vì đã sử dụng"
    -- Sau khi thông báo ẩn đi, bắt đầu thực hiện các nhiệm vụ
    spawn(startAutoFarm)
end)

-- Hàm kiểm tra trạng thái và làm nhiệm vụ
function autoFarm()
    for _, item in ipairs(StatusList) do
        local hasItem = item.CheckFunction()
        if hasItem then
            item.StatusLabel.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            item.StatusLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            item.TaskFunction()
        end
    end
end

-- Hàm liên tục quét và làm nhiệm vụ
function startAutoFarm()
    while wait(1) do
        autoFarm()
    end
end
