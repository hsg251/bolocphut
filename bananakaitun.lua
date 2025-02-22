--[[
    [+] Tui sẽ getkey giùm mọi người
    [+] Nếu key hết hạn mà ko thấy tui get tiếp mn có thể get qua link này get cũng dễ thôi
]]


repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

getgenv().Key = "HShTFAttqyvHozNgBgWtmmJwyXxJGUhJ"

getgenv().SettingFarm ={

    ["Hide UI"] = false,

    ["Reset Teleport"] = {

        ["Enabled"] = false,

        ["Delay Reset"] = 3,

        ["Item Dont Reset"] = {

            ["Fruit"] = {

                ["Enabled"] = true,

                ["All Fruit"] = true, 

                ["Select Fruit"] = {

                    ["Enabled"] = false,

                    ["Fruit"] = {},

                },

            },

        },

    },

    ["Get Items"] = {

        ["Godhuman"] = true,

        ["Mirror Fractal"] = true,

        ["Cursed Dual Katana"] = true,

    },

    ["Select Hop"] = { -- 70% will have it

        ["Hop Find Rip Indra Get Valkyrie Helm or Get Tushita"] = true, 

        ["Hop Find Dough King Get Mirror Fractal"] = false,

        ["Hop Find Raids Castle [CDK]"] = true,

        ["Hop Find Cake Queen [CDK]"] = true,

        ["Hop Find Soul Reaper [CDK]"] = true,

    },

    ["Buy Haki"] = {

        ["Enhancement"] = false,

        ["Skyjump"] = true,

        ["Flash Step"] = true,

        ["Observation"] = true,

    },

    ["Lock Fruit"] = {},

    ["Webhook"] = {

        ["Enabled"] = false,

        ["WebhookUrl"] = "",

    }

}

 

 

loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaCat-kaitunBF.lua"))()
