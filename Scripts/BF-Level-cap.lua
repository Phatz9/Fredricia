local levelcap = 703
local discordid = '795621503101042696' 
local url = 'https://discord.com/api/webhooks/875008563829952512/d2qykogRnhgpt7cp-gu6bsHkEwgHw11HtCQ5UJzUKlXPdPwGINHp3nymjhlFayVXGLvy' 

    if game.Players.LocalPlayer.Data.Level.Value >= levelcap then

        local username = game:GetService("Players").LocalPlayer.Name

        local data = {
            ["content"] = "<".."@"..discordid..">",
                 ["embeds"] = {{
                     ["description"] = "มาสเตอร์, รหัส".." ".."**"..username.." ".."**".."เลเวล".." "..levelcap.." ".."แล้ว!",          
                     ["color"] = tonumber(0x0E980E),
                 }}
             }

        local newdata = game:GetService("HttpService"):JSONEncode(data)
        
        local headers = {
           ["content-type"] = "application/json"
        }

        request = http_request or request or HttpPost or syn.request

        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}

        request(abcdef)

        game:Shutdown()
end
