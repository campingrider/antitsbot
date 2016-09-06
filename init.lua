require("ts3init")            -- Required for ts3RegisterModule
require("antitsbot/events")

local MODULE_NAME = "antitsbot"

local registeredEvents = {
	onTextMessageEvent = antitsbot_events.onTextMessageEvent
}

ts3RegisterModule(MODULE_NAME,registeredEvents)
ts3.printMessageToCurrentTab("antitsbot loaded.")
