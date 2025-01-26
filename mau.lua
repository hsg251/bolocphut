game.Players.PlayerAdded:Connect(function(player)
    if player.Name == "Mie", "quangdatvip19", "thanh_dan357", "thanh_nhan567" then
        player:Kick("tài khoản của bạn đã bị cấm khỏi sever script ThanhDan Hub")
    end
end)

wait(1)
print("người chơi đã ko bị cấm!")
print("vui lòng chờ!")

wait(3)
getgenv().Team = "Pirates"
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()


