# antitsbot
Teamspeak 3 - Lua-Plugin sending auto-reply to user "TSBot" in order to avoid being moved for being afk.

## Installation

* navigate to your "TeamSpeak 3 Client" directory (presumably "C:\Programs\Teamspeak 3 Client" or "C:\Users\Username\AppData\Local\TeamSpeak 3 Client" or similar)
* navigate to subdirectory "plugins" and there into subdirectory "lua_plugin"
* add directory "antitsbot" from this repository into directory "lua_plugin"
* Start Teamspeak, Open Settings > Plugins, choose Lua Plugin (make sure the box is checked so Lua is running) > Advanced Options > check the box before "antitsbot" > Apply
* You should see two messages for antitsbot being loaded
 
## Usage

Every time a user called "TSBot" sends you a message, your client will answer this message automatically. So if TSBot warns you, that you will be moved for being AFK in some minutes, your client becomes active so your afk-counter is resetted, effectively preventing you from being moved by the bot.

## Modification

If the bot you want to avoid being moved from has a name else than "TSBot" you can easily change the name by opening antitsbot/events.lua and replacing "TSBot" by any given name you want the plugin to listen to.
