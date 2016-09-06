local function onTextMessageEvent(serverConnectionHandlerID, targetMode, toID, fromID, fromName, fromUniqueIdentifier, message, ffIgnored)
	
	print("Antitsbot: onTextMessageEvent: " .. serverConnectionHandlerID .. " " .. targetMode .. " " .. toID .. " " .. fromID .. " " .. fromName .. " " .. fromUniqueIdentifier .. " " .. message .. " " .. ffIgnored)
	
	myID = ts3.getClientID(serverConnectionHandlerID)
	response = "Ich will nicht automatisch verschoben werden."
	if fromID ~= myID and fromName == "TSBot" and toID == myID then
		ts3.requestSendPrivateTextMsg(serverConnectionHandlerID, response, fromID)
	end
		
	return 0
end

antitsbot_events = {
	onTextMessageEvent = onTextMessageEvent
}

ts3.printMessageToCurrentTab("antitsbot events loaded.")
