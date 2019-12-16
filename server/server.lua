function OnPlayerSteamAuth(player)
    AddPlayerChat(player, "Your SteamId: "..GetPlayerSteamId(player))
end
AddEvent("OnPlayerSteamAuth", OnPlayerSteamAuth)

function OnPlayerJoin(player)
    -- Set where the player is going to spawn.
	SetPlayerSpawnLocation(player, 125773.000000, 80246.000000, 1645.000000, 90.0)

	AddPlayerChatAll('<span color="#eeeeeeaa">'..GetPlayerName(player)..' ('..player..') joined the server</>')
	AddPlayerChatAll('<span color="#eeeeeeaa">There are '..GetPlayerCount()..' players on the server</>')
	AddPlayerChat(player, "Welcome to the server!")
end
AddEvent("OnPlayerJoin", OnPlayerJoin)

AddEvent("OnPackageStart", function ()

end)

function OnPackageStop()

end
AddEvent("OnPackageStop", function ()
   
end)
