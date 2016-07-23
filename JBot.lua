-- Created By Sanjay2003rbx
-- Version: 1.6.8

local discordia = require('discordia')
local client = discordia.Client:new()

-- Settings
local Admins = { ["189513922808774656"] = true,
["179201489363795968"] = true, ["178525861476040704"] = true, ["188832914639814656"] = true, ["182501713423499264"] = true, ["179238629829246976"] = true } 
local Creator = { ["179201489363795968"] = true }

-- Client Starts
client:on('ready', function()

	p(string.format('Logged in as %s', client.user.username))
end)

-- <Admin> Clear Command v2
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>clear' then
		message.channel:bulkDelete(message.channel:getMessageHistory(arg))
		message.channel:sendMessage(string.format(' ```Deleted messages:  '.. arg ..' ```, %s', message.author:getMentionString()))
		end
	end
end)

-- Creator Commands
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(message)
	if cmd == '>test' then
		message.channel:sendMessage(string.format(' ``` JBot:Online ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(message)
	if cmd == '>leave' then
		message.channel:sendMessage(string.format(' ``` JBot is leaving the channel! ```, %s', message.author:getMentionString()))
		server:leave()
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(message)
	if cmd == '>todo' then
		message.channel:sendMessage(string.format(' ``` List: RbxApi Support, Youtube Api/Imgur Api support with 18+ filter; prevents users from accessing illegal or restricted content not suited for young viewers, ability to add admins in server, more fun commands, Clear messages command. ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>disconnect' then
		message.channel:sendMessage(string.format(' ``` JBot shutting down. ```, %s', message.author:getMentionString()))
		client:stop()
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>servers' then
		message.channel:sendMessage(string.format(' ``` Current Servers: 129 ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>stats' then
		message.channel:sendMessage(string.format(' ``` Name: JBot#7214. Bot: Yes. Desc: Multipurpose bot used to moderate servers or provide fun commands for you and your server. Language: Lua. Framework: Luvit. Lib: Discordia. Lib Creator: Sinister Rectus. Region: World. Version: 1.6.8. Bot Owner: Sanjay#2382 Updated: Yes. Updates: No. ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(cmd)
	if cmd == '>setgame' then
		client:setGameName(" >help | 129 servers")
		message.channel:sendMessage(string.format(' ``` Set to online server count. ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(cmd)
	if cmd == '>setidle' then
		message.channel:sendMessage(string.format(' ``` JBot set to Idle! ```, %s', message.author:getMentionString()))
		client:setStatusIdle()
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	print(cmd)
	if cmd == '>setonline' then
		message.channel:sendMessage(string.format(' ``` JBot Set to online! ```, %s', message.author:getMentionString()))
		client:setStatusOnline()
		end
	end
end)

--- Admin Commands

client:on('messageCreate', function(message)
    if message.author == client.user then return end
    if Admins[message.author.id] == true then 
    local cmd, arg = string.match(message.content, '(%S+) (.*)')
    cmd = cmd or message.content
    if cmd == '>kick' then
        for _, member in pairs(message.mentions.members) do
        if Admins[member.id] == true then
          message.channel:sendMessage("You cant kick admins!")
        else
        message.channel:sendMessage(string.format('%s , User has been kicked!', message.author:getMentionString()))
        member:kick()
				end
			end
		end
    end
end) 

client:on('messageCreate', function(message)
    if message.author == client.user then return end
    if Admins[message.author.id] == true then 
    local cmd, arg = string.match(message.content, '(%S+) (.*)')
    cmd = cmd or message.content
    if cmd == '>ban' then
        for _, member in pairs(message.mentions.members) do
        if Admins[member.id] == true then
          message.channel:sendMessage("You cant ban admins!")
        else
        message.channel:sendMessage(string.format('%s , User has been banned!', message.author:getMentionString()))
        member:ban(message.server)
				end
			end
		end
    end
end) 

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>warn' then
		for _, member in pairs(message.mentions.members) do
		message.channel:sendMessage(string.format('%s , User has been warned!', message.author:getMentionString()))
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>punish' then
		for _, member in pairs(message.mentions.members) do
		message.channel:sendMessage(string.format('%s , User has been punished!', message.author:getMentionString()))
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>admins' then
		message.channel:sendMessage(string.format(' ``` Admin List: 189513922808774656/Katyusha(No longer exists in server) 178525861476040704/Unique(Username change detected!), 188832914639814656/JBot, 182501713423499264/Kongou(No longer exists in server), 179238629829246976/Obunaga ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>creator' then
		message.channel:sendMessage(string.format(' ``` Creator: 179201489363795968/Sanjay ```, %s', message.author:getMentionString()))
		end
	end
end)

-- Normal User Commands
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>cmds' then
		message.channel:sendMessage(string.format(' ``` Comamnds: @Creator: >test, >servers, >leave, >stats, >disconnect, >todo, >setgame, >setidle, >setonline @Admin: >clear <Number>,>punish <@user> >kick <@user>, >ban <@user>, >warn <@user> >admins, >creator, >clearchat @Free: >cmds, >joke, >quote, >invite, >help, >about, >home, >new ```, %s', message.author:getMentionString()))
		
	end
end)

-- JokeCmdV2
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>joke' then 
		local number = math.random(1,11)
		if number == 1 then 
			message.channel:sendMessage(string.format(' ``` Hmmmmmm okay... What if I told you that the reason people laugh is because your face looks funny? Drink bleach or no?  ```, %s', message.author:getMentionString()))
		elseif number == 2 then 
			message.channel:sendMessage(string.format(' ``` You look like an ugly pricky pineapple, cause youre a PRICK!```, %s', message.author:getMentionString()))
		elseif number == 3 then 
			message.channel:sendMessage(string.format(' ``` Half the time when you get a girl, the girl happens to be a man.```, %s', message.author:getMentionString()))
		elseif number == 4 then 
			message.channel:sendMessage(string.format(' ``` Your mother is a queaker and you are too!```, %s', message.author:getMentionString()))
		elseif number == 5 then 
			message.channel:sendMessage(string.format(' ``` When Mary had a lamb, it was your ugly child.```, %s', message.author:getMentionString()))
		elseif number == 6 then 
			message.channel:sendMessage(string.format(' ``` Your face is so ugly, they use it as a weapon on the warzone.```, %s', message.author:getMentionString()))
		elseif number == 7 then 
			message.channel:sendMessage(string.format(' ``` Youre adopted.```, %s', message.author:getMentionString()))
		elseif number == 8 then 
			message.channel:sendMessage(string.format(' ``` The best way to make a asian man chill, hand him a fortune cookie.```, %s', message.author:getMentionString()))
		elseif number == 9 then 
			message.channel:sendMessage(string.format(' ``` God told me your gay, oh wait, that was your fat mother.```, %s', message.author:getMentionString()))
		elseif number == 10 then 
			message.channel:sendMessage(string.format(' ``` Fat people jokes are funny, I mean cmon... look at you.```, %s', message.author:getMentionString()))
		elseif number == 11 then 
			message.channel:sendMessage(string.format(' ``` ITS JUST A PRANK BRO, what I said when your mother said the baby was mine.```, %s', message.author:getMentionString()))
		end
	end
end)

-- QuoteCmdV1
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>quote' then 
		local number = math.random(1,11)
		if number == 1 then 
			message.channel:sendMessage(string.format(' ``` When in doubt, turn to a fortune cookie. ```, %s', message.author:getMentionString()))
		elseif number == 2 then 
			message.channel:sendMessage(string.format(' ``` Life is so free, make something out of it.```, %s', message.author:getMentionString()))
		elseif number == 3 then 
			message.channel:sendMessage(string.format(' ``` If someone calls you a nugget, go to a store and eat nuggets.```, %s', message.author:getMentionString()))
		elseif number == 4 then 
			message.channel:sendMessage(string.format(' ``` Fried Chicken provides great happiness if your black.```, %s', message.author:getMentionString()))
		elseif number == 5 then 
			message.channel:sendMessage(string.format(' ``` One day, that person who called you fat will also be fat.```, %s', message.author:getMentionString()))
		elseif number == 6 then 
			message.channel:sendMessage(string.format(' ``` War is filled with children, run away.```, %s', message.author:getMentionString()))
		elseif number == 7 then 
			message.channel:sendMessage(string.format(' ``` If someone says youre adopted, run and scream, RAPPPPPPPE!```, %s', message.author:getMentionString()))
		elseif number == 8 then 
			message.channel:sendMessage(string.format(' ``` Life is a funny thing, when you do something stupid.```, %s', message.author:getMentionString()))
		elseif number == 9 then 
			message.channel:sendMessage(string.format(' ``` The key to being rich is to cheat off someone else.```, %s', message.author:getMentionString()))
		elseif number == 10 then 
			message.channel:sendMessage(string.format(' ``` When your mad, never buy a bag of chips. Its 90% air, 10% chips.```, %s', message.author:getMentionString()))
		elseif number == 11 then 
			message.channel:sendMessage(string.format(' ``` If someone tells you to become someone else, its probably for the best.```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>new' then
		message.channel:sendMessage(string.format(' ``` Current Version 1.6.8: Added >quote for your favorite quotes and >joke for a great laugh! Both are randomized now. :) ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>invite' then
		message.channel:sendMessage(string.format(' ``` Hey! I knew you wanted me in your server. Click the link and add me to any server you want! Heres my invite link: ``` https://discordapp.com/oauth2/authorize?client_id=188832852270383106&scope=bot&permissions=536083519 , %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>home' then
		message.channel:sendMessage(string.format(' ``` Want to talk to the people that made me and work to keep me moving? Join this server! link: ``` https://discord.gg/011CUVhYmwGGk6d8H , %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>help' then
		message.channel:sendMessage(string.format(' ``` The prefix is a ">" also known universally as an arrow sign! Chat >cmds for a list of commands.  ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '>about' then
		message.channel:sendMessage(string.format(' ``` JBot is a multi-service bot created by Sanjay#2382 . Simply written in Lua using the Discordia Library. Deemed as the 1st complex bot written via the Discordia Lib, and does its best to uphold that mantle! As you can imagine, its features are vast! Supports Admin features, fun commands, Bot Stats, and others! JBot is always updating so be sure to have it in your server today!  ```, %s', message.author:getMentionString()))
		
	end
end)

client:run('MTg4ODMyOTE0NjM5ODE0NjU2.CkOQUw.m61_fQf6ryN22t1_VXE74iyV1-8') 
-- Client Ran