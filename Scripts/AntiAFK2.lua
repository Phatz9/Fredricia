local Players = game:GetService('Players')
local s,e = pcall(function()
    local GC = getconnections or get_signal_cons
    if GC then
        for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
            if v["Disable"] then
                v["Disable"](v)
            elseif v["Disconnect"] then
                v["Disconnect"](v)
            end
        end
        print('Anti Afk Enabled :D')
        game.StarterGui:SetCore('SendNotification', {
            Title = 'Anti-Idle is Enabled.',
            Text = 'Sucessfully Enabled Anti-Idle!'
        })
    else
        Players.LocalPlayer:Kick('Incompatible Exploit. (No GetConnections).')
    end
end)
if not s then Players.LocalPlayer:Kick('An Error occured using Anti-Idle\n' .. e) end
