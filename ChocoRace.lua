_addon.name = 'ChocoRace'
_addon.author = 'Manque'
_addon.version = '1.0'
_addon.language = 'english'
_addon.commands = {'chocorace'}

require('logger')
require('coroutine')

notice('Welcome to ChocoRace! Set your racing NPC name and desired item to be traded in the LUA. Requires the Enternity plugin. Happy racing.')

running = false

function loop()
	if running == true then
		windower.add_to_chat(200, 'Choco Race: Kweh! Off to the races!')
		itemcycle()
		coroutine.sleep (2)
		running = true
		coroutine.sleep (2)
		windower.add_to_chat(200, 'Off to the races! Good luck!')
		racecycle()
		coroutine.sleep (2)
		windower.add_to_chat(200, 'Starting loop again.')
		running = true
		coroutine.sleep(0.5)
		loop()
	else
		windower.add_to_chat(200, 'Error: Massive failure! Something is wrong. Reload or try again.')
		end
end

function target1()
	windower.send_command('setkey TAB down')
    coroutine.sleep(0.5)
    windower.send_command('setkey TAB up')
    coroutine.sleep(0.5)
		
		player = windower.ffxi.get_player()
		
		if windower.ffxi.get_mob_by_target( 't' ) == nil then
            windower.add_to_chat(200, 'Finding Race NPC.' )
			coroutine.sleep (0.5)
			target1()
		elseif windower.ffxi.get_mob_by_target('t').name == "Rungaga" then
			windower.add_to_chat(200, 'Found Race NPC.')
        else
            coroutine.sleep(0.5)
			target1()
		end
end	
	
function item()
		windower.add_to_chat(200, 'Race Item: Trading Item.')
		windower.chat.input("/item \"Speed Apple\" <t>")
		coroutine.sleep(2)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')		
		coroutine.sleep(0.5)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')		
		coroutine.sleep(0.5)	
end			

function race()
		windower.add_to_chat(200, 'Race time! Equipping item and starting race.')
--NPC Selected and begin navigation of race menu.--		
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')		
		coroutine.sleep(10)			
		windower.send_command('setkey down down')		
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')		
		coroutine.sleep(0.2)		
		windower.send_command('setkey down down')	
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')		
		coroutine.sleep(0.2)
--Enter Free run menu.--
		windower.send_command('setkey enter down')
		coroutine.sleep(1)
		windower.send_command('setkey enter up')		
		coroutine.sleep(2)
		windower.send_command('setkey down down')	
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')		
		coroutine.sleep(0.2)
		windower.send_command('setkey down down')	
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')		
		coroutine.sleep(0.2)
		windower.send_command('setkey down down')	
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')		
		coroutine.sleep(0.2)
--Enter Equipment menu.--	
		windower.send_command('setkey enter down')
		coroutine.sleep(1)
		windower.send_command('setkey enter up')		
		coroutine.sleep(2)
		windower.send_command('setkey down down')	
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')		
		coroutine.sleep(1.5)
--Select first item in list.--
		windower.send_command('setkey enter down')		
		coroutine.sleep(1)
		windower.send_command('setkey enter up')		
		coroutine.sleep(1)
		windower.send_command('setkey up down')	
		coroutine.sleep(0.2)
		windower.send_command('setkey up up')	
		coroutine.sleep(0.2)
--Confirm item.--
		windower.send_command('setkey enter down')		
		coroutine.sleep(1)
		windower.send_command('setkey enter up')		
		coroutine.sleep(2)
--Back to main menu--
		windower.send_command('setkey down down')
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')
		coroutine.sleep(0.2)
		windower.send_command('setkey down down')
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')
		coroutine.sleep(0.2)
		windower.send_command('setkey down down')
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')
		coroutine.sleep(0.2)
		windower.send_command('setkey down down')
		coroutine.sleep(0.2)
		windower.send_command('setkey down up')
		coroutine.sleep(0.2)
--Select start race.--
		windower.send_command('setkey enter down')
		coroutine.sleep(0.2)
		windower.send_command('setkey enter up')
		coroutine.sleep(5)
--Confirm skip cutscene.--		
		windower.send_command('setkey enter down')
		coroutine.sleep(0.2)
		windower.send_command('setkey enter up')
		coroutine.sleep(5)		
end

function racecycle()
	if running == true then
		windower.add_to_chat(200, 'Finding Race NPC to start racing.')
		target1()
		coroutine.sleep(2)
		race()
		coroutine.sleep(2)
		running = false
		windower.add_to_chat(200, 'Race Complete! Make it rain!')
	else
		windower.add_to_chat(200, 'Error: Race process unsuccessful.')
		end
end

function itemcycle()
	if running == true then
		windower.add_to_chat(200, 'Finding Race NPC to trade item.')
		target1()
		coroutine.sleep(1)
		item()
		coroutine.sleep(1)
		running = false
		windower.add_to_chat(200, 'Item trade complete!')
	else
		windower.add_to_chat(200, 'Error: Item trade failed.')
		end
end

function chocorace_command(...)
    if #arg > 1 then
        windower.add_to_chat(167, 'Invalid command.')
    elseif #arg == 1 and arg[ 1 ]:lower() == 'start' then
        if running == false then
            running = true
            windower.add_to_chat(200, 'ChocoRace: Begin race loop.')
            loop()
        elseif running == true then
            windower.add_to_chat(200, 'ChocoRace already running. Use //Chocorace to abort. Reload the addon and try again.')
        end
    elseif #arg == 1 and arg[ 1 ]:lower() == 'stop' then
        if running == false then
            windower.add_to_chat(200, 'ChocoRace is not running currently. Use //Chocorace to abort. Reload the addon and try again.')
		elseif running == true then
			windower.add_to_chat(200, 'ChocoRace: Aborting all actions and reloading.')
			windower.send_command('lua reload Chocorace')
        end
	elseif #arg == 1 and arg[ 1 ]:lower() == 'item' then
		if running == false then
            windower.add_to_chat(200, 'ChocoRace: Starting a single racing cycle.')
			running = true			
			itemcycle()
		elseif running == true then
            windower.add_to_chat(200, 'ChocoRace is already running. Use //Chocorace to abort. Reload the addon and try again..')
		end
	elseif #arg == 1 and arg[ 1 ]:lower() == 'race' then
		if running == false then
            windower.add_to_chat(200, 'ChocoRace: Starting a single racing cycle.')
			running = true
			racecycle()
		elseif running == true then
            windower.add_to_chat(200, 'ChocoRace is already running. Use //Chocorace to abort. Reload the addon and try again.')
		end
	elseif #arg == 1 and arg[ 1 ]:lower() == 'abort' then
        windower.add_to_chat(200, 'ChocoRace: Aborting all actions and reloading.')
		windower.send_command('lua reload chocorace')
	elseif #arg == 1 and arg[ 1 ]:lower() == 'help' then
        windower.add_to_chat(200, 'ChocoRace commands: start stop abort item race. See readme for additional information.')
	else
		end
end

windower.register_event('addon command', chocorace_command)