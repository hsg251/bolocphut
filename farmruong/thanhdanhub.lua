-- Auto Farm Chest Script with ThanhDan Hub
-- Nhặt chest, reset nhân vật, đổi server, và hiển thị chữ ThanhDan Hub đổi màu ngẫu nhiên mỗi giây.

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

-- Hàm xác định Sea hiện tại
local function getCurrentSea()
    if Workspace:FindFirstChild("SeaBeast") or Workspace:FindFirstChild("Mansion") then
        return "Sea 3"
    elseif Workspace:FindFirstChild("Cafe") or Workspace:FindFirstChild("Kingdom of Rose") then
        return "Sea 2"
    else
        return "Sea 1"
    end
end

-- Hàm lấy danh sách server từ Roblox API
local function getServers()
    local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet(url))
    end)
    if success and result then
        local servers = {}
        for _, server in pairs(result.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                table.insert(servers, server.id)
            end
        end
        return servers
    else
        warn("Không thể lấy danh sách server.")
        return {}
    end
end

-- Đổi sang server bất kỳ trong cùng Sea
local function switchServer()
    local currentSea = getCurrentSea()
    print("Bạn đang ở " .. currentSea .. ". Đang tìm server mới trong cùng Sea...")
    local servers = getServers()
    if #servers > 0 then
        TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], LocalPlayer)
    else
        print("Không tìm thấy server phù hợp.")
    end
end

-- Nhận tất cả các chest hiện có
local function getAllChests()
    local chests = {}
    for _, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("Model") and string.find(v.Name:lower(), "chest") then
            table.insert(chests, v)
        end
    end
    return chests
end

-- Thực hiện farm chest
local function farmChests()
    local chests = getAllChests()
    if #chests == 0 then
        print("Không còn chest nào, đổi server...")
        switchServer()
        return
    end

    for _, chest in ipairs(chests) do
        if chest:FindFirstChild("TouchInterest") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = chest.CFrame
            wait(0.5) -- Chờ một chút để nhặt chest
        end
    end

    -- Reset nhân vật sau 3.5 giây
    wait(3.5)
    LocalPlayer.Character:BreakJoints()
end

-- Hiển thị GUI đổi màu chữ ngẫu nhiên
local function createHub()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.CoreGui

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.3, 0, 0.1, 0)
    label.Position = UDim2.new(0.35, 0, 0.05, 0)
    label.BackgroundTransparency = 1
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
    label.Text = "ThanhDan Hub"
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Parent = screenGui

    -- Hiệu ứng đổi màu ngẫu nhiên mỗi giây
    spawn(function()
        while true do
            wait(1) -- Đổi màu mỗi giây
            label.TextColor3 = Color3.fromRGB(
                math.random(0, 255), -- Red
                math.random(0, 255), -- Green
                math.random(0, 255)  -- Blue
            )
        end
    end)
end

-- Gọi hàm tạo GUI
createHub()

-- Vòng lặp chính
while true do
    pcall(farmChests)
    wait(2) -- Chờ giữa các lần kiểm tra
end
