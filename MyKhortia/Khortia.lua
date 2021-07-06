function QuestPrintWayPoint (QuestName,questInputId,x,y)
	questStatus = C_QuestLog.IsQuestFlaggedCompleted(questInputId)
	if not questStatus then
		questStatusString = tostring(C_QuestLog.IsQuestFlaggedCompleted(questInputId))
		print(QuestName .. ": " .. questStatusString .. "  /way" .. " " .. x .. " " .. y)
	--else
		--print("   " .. QuestName .. ": completed")
	end
end

function QuestPrint(QuestName,questInputId,x,y)
	questStatus = C_QuestLog.IsQuestFlaggedCompleted(questInputId)
	if not questStatus then
		questStatusString = tostring(C_QuestLog.IsQuestFlaggedCompleted(questInputId))
	end
end

SLASH_mykorthia1 = "/mykorthia"
SlashCmdList["mykorthia"] = function(msg)
   	print("/archq - Archivist's Codex Reputation onetime quests")
	print("/riftvault - location(drag to venari):")
	print("/riftchests - everyday rift chests")


end 

SLASH_archq1 = "/archq"
SlashCmdList["archq"] = function(msg)
	local zoneName = GetZoneText();
	print("Tier 1 Relics - no special items")
	QuestPrintWayPoint("Talisman of the Eternal Scholar",63860,40.5, 41.3 )
	QuestPrintWayPoint("Singing Steel Ingot",63911,61.9, 56.8)
	QuestPrintWayPoint("Book of Binding: The Mad Witch",63899,30.2, 54.9)
	QuestPrintWayPoint("Celestial Shadowlands Chart",63912,45.3, 56.0)
	QuestPrintWayPoint("Diviner's Rune Chits - Any chest starts quest",63892,0,0)
	
	print("Tier 2 Relics - requires key 25  Cataloged Research")
	QuestPrintWayPoint("The Netherstar",63910,33.0, 41.9)
	QuestPrintWayPoint("Gorak Claw Fetish",63924,43.3, 57.7)
	QuestPrintWayPoint("Guise of the Changeling",63909,41.2, 43.2)
	QuestPrintWayPoint("Ring of Self-Reflection",63921,43.7, 77.0)
	
	print("Tier 3 Relics - requires Teleporter Repair Kit")
	QuestPrintWayPoint("Drum of the Death Loa",63915,39.4, 52.5)
	QuestPrintWayPoint("Everliving Statuette",63917,39.4, 52.5)
	QuestPrintWayPoint("Sack of Strange Soil",63916,45.1, 35.7)
	QuestPrintWayPoint("Obelisk of Dark Tidings",63918,45.1, 35.7)
	
	print("Tier 4 Relics - requires Repaired Riftkey")
	QuestPrintWayPoint("Book of Binding: The Tormented Sorcerer",63919,60.8, 34.8 )
	QuestPrintWayPoint("Unstable Explosive Orb",63913,51.3, 20.3)
	QuestPrintWayPoint("Enigmatic Decrypting Device",63920,51.8, 52.5)
	QuestPrintWayPoint("Cipher of Understanding",63914,28.9, 54.0)

	print("If no waypoints appear then you completed the one time quest! Grats")
end 


SLASH_riftvault1 = "/riftvault"
SlashCmdList["riftvault"] = function(msg)

	questStatus = C_QuestLog.IsQuestFlaggedCompleted(64282)
	if not questStatus then
		local zoneName = GetZoneText();
		if string.upper(zoneName) == "THE RIFT" then
			a = {}
			a[1] = "/way The Maw:The Shadowlands 43.5 50.9 Venari Location"
			print("Zone in THE MAW not Korthia")
			print("Venari starting quest: " .. a[1])
			print("Posible chest location(drag to venari):")
			--SendChatMessage("/way 47.2, 79.7")
			a[2] = "/way The Maw:The Shadowlands 47.2 79.7 possible Vault location"
			a[3] = "/way The Maw:The Shadowlands 62.1 64.3 possible Vault location"
			a[4] = "/way The Maw:The Shadowlands 66.4 58.2 possible Vault location"
			a[5] = "/way The Maw:The Shadowlands 33.0 66.3 possible Vault location"
			print(a[2])             
			print(a[3])
			print(a[4])
			print(a[5])
			if IsAddOnLoaded("TomTom") then
				DEFAULT_CHAT_FRAME.editBox:SetText(a[1]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
				DEFAULT_CHAT_FRAME.editBox:SetText(a[2]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
				DEFAULT_CHAT_FRAME.editBox:SetText(a[3]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
				DEFAULT_CHAT_FRAME.editBox:SetText(a[4]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
				DEFAULT_CHAT_FRAME.editBox:SetText(a[5]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
			end
		   
		else
			print("Daily:Zone Maw - Requires to be inside THE RIFT")
		end
	else
		print("You completed this daily quest")
	end
end 

SLASH_riftchests1 = "/riftchests"
SlashCmdList["riftchests"] = function(msg)
	local zoneName = GetZoneText();
	--if string.upper(zoneName) == "THE RIFT" then
	if true then
		a = {}
		a[1] = "/way Korthia 30.59 55.24 - in cave"
		a[2] = "/way Korthia 55.06 17.07 - in cave"
		a[3] = "/way Korthia 52.85 44.26 - around"
		a[4] = "/way Korthia 39.64 42.37 - top of the hill"	
		a[5] = "/way Korthia 64.28 30.41"
		a[6] = "/way Korthia 61.06 35.26"
		print(a[1])
		print(a[2])
		print(a[3])
		print(a[4])
		print(a[5])
		print(a[6])

	if IsAddOnLoaded("TomTom") then
		DEFAULT_CHAT_FRAME.editBox:SetText(a[1]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
		DEFAULT_CHAT_FRAME.editBox:SetText(a[2]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
		DEFAULT_CHAT_FRAME.editBox:SetText(a[3]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
		DEFAULT_CHAT_FRAME.editBox:SetText(a[4]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
		DEFAULT_CHAT_FRAME.editBox:SetText(a[5]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
		DEFAULT_CHAT_FRAME.editBox:SetText(a[6]) ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
	end
	else
		print("Daily:Zone Korthia - Requires to be inside THE RIFT")
	end

end 



local EventFrame = CreateFrame("Frame")
EventFrame:RegisterEvent("PLAYER_LOGIN")
EventFrame:SetScript("OnEvent",
	function(self, event, ...)
	print ("/mykorthia - cmd list")
	end)


