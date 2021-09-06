     print('Script Made By. Phat#9999')

    if game.Players.LocalPlayer.Data.Level.Value >= levelcap then

        local username = game:GetService("Players").LocalPlayer.Name

        game.Players.LocalPlayer:kick("            "..(username).." ".."Is Already Done!")

        local data = {
            ["content"] = "<".."@"..discordid..">",
                 ["embeds"] = {{
                     ["description"] = "มาสเตอร์, รหัส".." ".."**"..username.." ".."**".."เลเวล".." "..levelcap.." ".."แล้วอย่าลืมไปปิดด้วยล่ะ!",          
                     ["color"] = tonumber(0x0E980E),
                 }}
             }
         -- thanks foro#8122 on synx Discord fot this
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        
        local headers = {
           ["content-type"] = "application/json"
        }

        request = http_request or request or HttpPost or syn.request

        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}

        request(abcdef)

