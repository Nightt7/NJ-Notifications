RegisterNetEvent('nj_notifications:Notification')

function Notification(message , title)
    SendNUIMessage({
        action = 'show:noti',
        text = ConvertMessage(message),
        title = title,
        time = Config.Time
    })
end

CreateThread(function()
    while true do
        SendNUIMessage({
            action = 'car:show',
            inCar = IsPedInAnyVehicle(PlayerPedId())
        })
        Wait(600)
    end
end)

AddEventHandler('nj_notifications:Notification' , function(message , title)
    Notification(message , title)
end)

RegisterCommand('noti', function()
    TriggerEvent('nj_notifications:Notification', 'Esto es un test de un maricon como es ~g~Jaaret la guarra' , 'INFO')
end)

function ConvertMessage(text)
    text = text:gsub("~r~", "<span style=Color:red;>") 
    text = text:gsub("~b~", "<span style='Color:rgb(0, 213, 255);'>")
    text = text:gsub("~f~", "<span style='Color:rgb(4, 69, 155);'>")
    text = text:gsub("~g~", "<span style='Color:rgb(0, 255, 68);'>")
    text = text:gsub("~y~", "<span style=Color:yellow;>")
    text = text:gsub("~p~", "<span style='Color:rgb(220, 0, 255);'>")
    text = text:gsub("~c~", "<span style=Color:grey;>")
    text = text:gsub("~m~", "<span style=Color:darkgrey;>")
    text = text:gsub("~u~", "<span style=Color:black;>")
    text = text:gsub("~o~", "<span style=Color:gold;>")
    text = text:gsub("~s~", "</span>")
    text = text:gsub("~w~", "</span>")
    text = text:gsub("~b~", "<b>")
    text = text:gsub("~n~", "<br>")
    text = "<span style=Color:white;>" .. text .. "</span>"

    return text
end