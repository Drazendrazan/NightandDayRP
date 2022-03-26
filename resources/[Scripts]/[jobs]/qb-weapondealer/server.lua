Framework = nil
TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)
 
RegisterServerEvent('Openshop:kwk')
AddEventHandler('Openshop:kwk', function(bericht)
    local vaild = {}
    local invaild = {}

    local embed = {
        {
            ["color"] = "65450",
            ["description"] = "Someone opened the weaponshop.",
        }
    }
    PerformHttpRequest("https://discord.com/api/webhooks/913696181601861682/GeWIGLYY5Ulg3yHKicyvFF4MZq-U3lOBGF2J5oDRa1JcmxlvFGQh8wCQ1PvnofAzsDsC", function(err, text, headers) end, 'POST', json.encode({embeds = embed}), { ['Content-Type'] = 'application/json' })
end
