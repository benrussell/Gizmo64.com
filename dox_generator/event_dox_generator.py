#!/usr/bin/python

__author__ = 'br'
"""
"""


import os
import re
import string

# Where is the Gizmo source?
input_folder = "/Users/br/Desktop/GizmoVMSharedDev/Gizmo/plugin_source/"

# Where do we export the JSON data to? (will write to gizmo_events.json)
output_folder = "/Users/br/Dropbox/Dev/Gizmo-Docs_gh-pages/content/autogen/"



counter_headers = 0
counter_src = 0


def save_data( filename, data ):
	fh_module = open( "%s%s" %(output_folder, filename), "w")
	fh_module.write( data )
	fh_module.close()



#storage for Event-Dox-Comments blocks
known_event_docs = {}


# --------- System Events -------------


known_event_docs["OnSystemMenu_AboutGizmo"] = ["""
function OnSystemMenu_AboutGizmo()
--Gizmo64 XPL calls this when it wants to display the HotFix which is crafted from Lua widgets.
end
""","MENU"]



known_event_docs["OnSystemMenu_HotFix"] = ["""
function OnSystemMenu_AboutGizmo()
--Gizmo64 XPL calls this when it wants to display the About Dialog which is crafted from Lua widgets.
end
""","MENU"]






known_event_docs["OnKickStart"] = ["""
function OnKickStart()
--Called during LuaVM restart. Used to initiate boot process. Detects which script to load for the Players current aircraft.
end
""","BOOT"]





known_event_docs["OnError"] = ["""
function OnError()
--Called when a LuaVM error is detected.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
""","LOG"]

known_event_docs["OnDebug"] = ["""
function OnError()
--Called when a LuaVM error is detected.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
""","LOG"]

known_event_docs["OnWarning"] = ["""
function OnError()
--Called when a LuaVM error is detected.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
""","LOG"]





known_event_docs["OnAircraftCrash"] = ["""
function OnAircraftCrash()
--The user crashed the vehicle.
end
""","SYS"]


known_event_docs["OnAircraftLoad"] = ["""
function OnAircraftLoad()
--This function needs to accept an index number telling us which aircraft changed, currently it does not.
--You know -an- aircraft was loaded, you don't know which one, it's kind of irrelevant anyway due to engine issues.(??? - br)
end
""","SYS"]


known_event_docs["OnAircraftUnload"] = ["""
function OnAicraftUnload()
--This function needs to accept an index number telling us which aircraft changed, currently it does not.
--You know an aircraft was unloaded, but not which one.
end
""","SYS"]


known_event_docs["OnAirportChanged"] = ["""
function OnAirportChanged()
--A new airport has been selected
end
""","SYS"]


known_event_docs["OnBeforeReboot"] = ["""
function OnBeforeReboot()
--This hook has been created to give you a chance to cleanup x-planes state.
--This may include releasing overrides, restoring the autopilot/fmc, etc.
end
""","SYS"]


known_event_docs["OnBoot"] = ["""
function OnBoot()
--Gizmo has rebooted, init your code.
--This event is also called when the user first loads your ACF file.
end
""","SYS"]


known_event_docs["OnFirstFrame"] = ["""
function OnFirstFrame()
--OnBoot -> ACF Finishes Loading -> OnFirstFrame
--set any "default acf state" datarefs here.
end

API: >= 11.5.12
""","SYS"]


known_event_docs["OnForceRedraw"] = ["""
function OnForceRedraw()
--The user has exited a full screen X-Plane dialog: Eg: WX/Joystick/Rendering options.
--Does not work for: Load ACF / Change ACF Livery. Checked most others. Please report any that dont work.
end

API: >= 11.5.12
""","SYS"]


known_event_docs["OnLiveryChanged"] = ["""
 function OnLiveryChanged()
 
 --The user has changed their livery, check acf.getLiveryName() for more info.
 
 end
 
 API >= 11.9.1
 ""","SYS"]


known_event_docs["OnMouseClick"] = ["""
function OnMouseClick()
--mouse.click.x, mouse.click.y and mouse.click.e 
--are automatically updated by Gizmo before this function is called.
--You may use them immediately.

	sound.say("click: " .. mouse.click.x .. " / " .. mouse.click.y .. 
				" / " .. mouse.click.e )

--See the mouse.api module documentation for more details.
end
""","SYS"]


known_event_docs["OnMouseWheel"] = ["""
 function OnMouseWheel( x,y, wheel,clicks )
	--x,y in screen coordinates
	--wheel and clicks are int values, unkown details.
 
 end
 
 ""","SYS"]


known_event_docs["OnPluginDisable"] = ["""
function OnPluginDisable()
--The plugin has been disabled.
end
""","SYS"]


known_event_docs["OnPluginEnable"] = ["""
function OnPluginEnable()
--The plugin has been enabled.
end
""","SYS"]


known_event_docs["OnPluginMessage"] = ["""
 _Events.OnPluginMessage( sig, path, message, integer_param )
 Calls for inter plugin comms.
 
 function OnPluginMessage( sig, path, message ) 
	 if( sig == "com.example.plug" )then
	 --if we return 1 then Gizmo will ensure that only this function sees this event.
	 return 1
 end
 
 --if we do not return any value Gizmo will continue looking for an event handler for this plugin message type.
 
 end
 ""","SYS"]


known_event_docs["OnPluginMessageEx"] = ["""
_Events.OnPluginMessageEx( sig, path, message, integer_param )
 Expert calls for inter plugin comms, allows for fine grained control of message handlers.
 
 function OnPluginMessageEx( sig, path, message, integer_param )
 
	if( sig == "com.example.plug" )then
		--if we return 1 then Gizmo will ensure that only this function sees this event.
		return 1
	end
 
	
	--if we do not return any value Gizmo will continue looking for an event handler for this plugin message type.
 
 end
""","SYS"]

 
known_event_docs["OnSceneryLoaded"] = ["""
function OnSceneryLoaded()
--New scenery tiles were loaded
end
""","SYS"]


known_event_docs["OnScriptError"] = ["""
function OnScriptError( message_string )
--A script error has been thrown.
end
""","SYS"]


known_event_docs["OnScriptWarning"] = ["""
function OnScriptWarning( message_string )
--A script warning has been thrown.
end
""","SYS"]


known_event_docs["OnSituationLoaded"] = ["""
function OnSituationLoaded()
--A .sit file completed loading.
end
""","SYS"]


known_event_docs["OnTrafficCountChanged"] = ["""
 function OnTrafficCountChanged()
 
	--The number of traffic aircraft has been changed
 
 end
 ""","SYS"]


known_event_docs["OnUpdate"] = ["""
function OnUpdate()
--this is your basic "every frame" function call, do most of your work here.
end
""","SYS"]




 



# --------- 2D Drawing Events -------------


known_event_docs["OnDraw_BeforeGauges"] = ["""
function OnDraw_BeforeGauges()

end
 ""","2D"]

known_event_docs["OnDraw_BeforeGauges_3D"] = ["""
function OnDraw_BeforeGauges_3D()

end
 ""","2D"]

known_event_docs["OnDraw_BeforeLastCockpit"] = ["""
function OnDraw_BeforeLastCockpit()

end
 ""","2D"]

known_event_docs["OnDraw_BeforeLastScene"] = ["""
function OnDraw_BeforeLastScene()

end
 ""","2D"]

known_event_docs["OnDraw_BeforeLocalMap2D"] = ["""
function OnDraw_BeforeLocalMap2D()

end
 ""","2D"]

known_event_docs["OnDraw_BeforeLocalMapProfile"] = ["""
function OnDraw_BeforeLocalMapProfile()

end
 ""","2D"]

known_event_docs["OnDraw_BeforeWindows"] = ["""
function OnDraw_BeforeWindows()

end
 ""","3D"]



known_event_docs["OnDraw_FirstCockpit"] = ["""
	function OnDraw_BeforeFirstCockpit()
	end
	function OnDraw_FirstCockpit()
	end
 ""","2D"]


known_event_docs["OnDraw_Gauges"] = ["""
	function OnDraw_BeforeGauges()
		--Using this function can be more suitable for mixing Avionics with X-Planes built in items.
		--Combined with the next function you should be able to achieve most tasks.
	end
	function OnDraw_Gauges()
		--You should draw your Panel Gauges / Avionics displays in this function.
	end
 ""","2D"]


known_event_docs["OnDraw_Gauges_3D"] = ["""
	function OnDraw_BeforeGauges_3D()
		--3d Panel Phase, gauge background, bezels etc
		--The function names have 3D in them but the drawing modes are purely 2D GL.
	end
	function OnDraw_Gauges_3D()
		--3D panel phase
	end
 ""","2D"]


known_event_docs["OnDraw_LastCockpit"] = ["""
	function OnDraw_BeforeLastCockpit()

	end
	function OnDraw_LastCockpit()

	end
""","2D"]


known_event_docs["OnDraw_Panel"] = ["""
 --These functions are not available yet.
 --function OnDraw_BeforePanel()
 --end
 --function OnDraw_Panel()
 --end
 ""","2D"]


known_event_docs["OnDraw_LocalMap2D"] = ["""
	--WARNING: These functions have ambiguous names that will be changed.
	--They have been added "for completeness" and don't fit in with the Gizmo naming conventions as they are.
	function OnDraw_BeforeLocalMap2D()

	end
	function OnDraw_LocalMap2D()

	end
 ""","2D"]


known_event_docs["OnDraw_LocalMapProfile"] = ["""
	function OnDraw_BeforeLocalMapProfile()

	end
	function OnDraw_LocalMapProfile()

	end
 ""","2D"]


known_event_docs["OnDraw_Windows"] = ["""
	function OnDraw_BeforeWindows()

	--Draw your own 2d popups here
	end
	function OnDraw_Windows()

	--Draw your own 2d popups here
	end
""","2D"]







# --------- 3D Drawing Events -------------

known_event_docs["OnDraw_BeforeFirstScene"] = ["""
function OnDraw_BeforeFirstScene()

end
 ""","3D"]

known_event_docs["OnDraw_BeforeAirplanes"] = ["""
function OnDraw_BeforeAirplanes()

end
 ""","3D"]

known_event_docs["OnDraw_BeforeAirports"] = ["""
function OnDraw_BeforeAirports()

end
 ""","3D"]


known_event_docs["OnDraw_BeforeFirstCockpit"] = ["""
function OnDraw_BeforeFirstCockpit()

end
 ""","3D"]


known_event_docs["OnDraw_BeforeTerrain"] = ["""
function OnDraw_BeforeTerrain()

end
 ""","3D"]

known_event_docs["OnDraw_BeforeVectors"] = ["""
function OnDraw_BeforeVectors()

end
 ""","3D"]





known_event_docs["OnDraw_FirstScene"] = ["""
function OnDraw_FirstScene()

end
 ""","3D"]


known_event_docs["OnDraw_Terrain"] = ["""
	function OnDraw_Terrain()
	
	end
""","3D"]


known_event_docs["OnDraw_Airports"] = ["""
	function OnDraw_Airports()
	
	end
 ""","3D"]


known_event_docs["OnDraw_Vectors"] = ["""
	function OnDraw_Vectors()
	
	end
""","3D"]


known_event_docs["OnDraw_World"] = ["""
	function OnDraw_World()
	
	--Draw objects in the world next to your aircraft, your aircraft will be drawn after them so effects should integrate well
	--Called during: xplm_Phase_Objects
	end
 ""","3D"]





known_event_docs["OnDraw_DebugFlightPath"] = ["""
	function OnDraw_DebugFlightPath()
	--Use this to draw graphics when x-planes purple flight path is turned on
	--The actual SDK phase is currently xplm_Phase_Objects
	end
 ""","3D"]


known_event_docs["OnDraw_Airplanes"] = ["""
	function OnDraw_Airplanes()
	
	end
 ""","3D"]


known_event_docs["OnDraw_LastScene"] = ["""
	function OnDraw_LastScene()
	
	end
""","3D"]


known_event_docs["OnDraw_LocalMap3D"] = ["""
--WARNING: This function needs a name tweak to match the panel drawing signature convetion.

	function OnDraw_LocalMap3D()
	
	end

""","3D"]



#FIXME: delete an item from the list above and test to ensure that it is detected as a new event!








list_of_api_function_data = {}

tmp_last_signature = ""


if( os.path.exists(input_folder) and os.path.isdir(input_folder) ):
	print("Scanning api headers in folder: %s\n" % (input_folder))

	match_count = 0
	
	
	events_list = {}


	for f in os.listdir(input_folder):
		if( os.path.isdir(f) ):
			pass
			#print("Ignoring sub-folder: " + f)
		else:
			if( f[-4:] == ".cpp" ):
				#print("scan: %s" %(f))
				
				#self.object_file_list.append(input_objects_folder + f)
				counter_headers = counter_headers + 1
				
				
				#open the .h file and scan its contents.
				fh_header = open("%s%s" %(input_folder, f))
				data_header = fh_header.read()
				fh_header.close()
				
				
				lines = data_header.split("\n")
				
				
				
				
				for l in lines:
					m = re.match(".*\"(On.*)\".*$", l)
					if( m ):
						event_name = str(m.groups(1)[0])
						match_count += 1
					
						if( event_name in events_list ):
							events_list[ event_name ] += 1
							print( "%s <-- duplicate" %(event_name) )
							
						else:
							events_list[ event_name ] = 1
					
					
	# end looping all input files...






# Documentation for each event is stored in this script as structured python data.
# This script performs two main tasks:
# 1. Exporting structured event data into JSON format text for use on the web.
# 2. Scanning the Gizmo source code for events data that we don't have information for.





#output a bunch of data about the files we just scanned.
#
# print("")
# for k in sorted(events_list):
# 	pass
# 	if( k in known_event_docs ):
# 		pass
# 		#print( "\"%s\"," %(k) ) #Event name
# 		#print(known_event_docs[ k ][1]) #output subsystem that owns this event
# 		#print(known_event_docs[ k ][0]) #output description data
# 	else:
# 		print( "\"%s\"," %(k) ) #event name
# 		print("\t NO DOX: %s ***" %(k))
#
# print("")
# print( match_count )
#




###################### Export the HTML documentation. ###############

#print("--- HTML API ---")
tree_block = ""
dox_block = ""
last_clean_p = ""

json_blob = ""

warnings = []

api_sections = {}
api_data = []



## This code is used to decode the script data and re-assemble it in a way thats useful for JSON output.
# for sig in sorted(list_of_api_function_data):
# 	if( list_of_api_function_data[sig] == "" ):
# 		#print("Missing dox: %s" %(sig))
# 		warnings.append( "Missing dox: %s" %(sig) )
#
# 	#print(sig)
# 	#print( list_of_api_function_data[sig] )
#
# 	m = re.match("^(.+)\(.*", sig)
# 	clean_sig = sig
#
# 	json_sig = string.strip(sig)
# 	json_dox = (list_of_api_function_data[sig])
# 	json_subsys = "hardcoded"
#
# 	if( m ):
# 		clean_sig = str(m.groups(1)[0])
# 		json_sig = clean_sig
# 		print( sig )
# 		clean_parent = clean_sig.split(".")[0]
# 		if( clean_parent != last_clean_p ):
# 			last_clean_p = clean_parent
# 			#print("foo")
#
# 			if( clean_parent in api_sections ):
# 				 pass
# 				#print("ignore")
# 			else:
# 				api_sections[clean_parent] = []
# 				print("\n**** created storage for: %s" %(last_clean_p))
#
# 			#api_sections.append( clean_parent )
#
# 	#print( "key: (%s)" %(last_clean_p) )
# 	#print( "sig: (%s)" %(json_sig) )
# 	#print( "key: (%s)" %(last_clean_p) )
# 	if( last_clean_p != "" ):
# 		api_sections[last_clean_p].append( [json_sig, sig, json_dox] )




print("")
for k in sorted(events_list):
	pass
	if( k in known_event_docs ):
		event_name = k
		description = known_event_docs[ k ][0]
		subsys_name = known_event_docs[ k ][1]

		#ensure that we have dict storage for this data.
		if( subsys_name in api_sections ):
			pass
		else:
			api_sections[ subsys_name ] = []

		api_sections[ subsys_name ].append( [ event_name, event_name, description, subsys_name ] )

	else:
		print( "\"%s\"," %(k) ) #event name
		print("\t NO DOX: %s ***" %(k))

print("")
print( match_count )




for k in sorted(set(api_sections)):
	json_blob += "\t'%s' : [\n" %(k)
	v = api_sections[k]
	node_x = 0
	max_x = len(v)
	for node in v:
		
		json_dox = node[2]
		json_dox = string.replace( json_dox, "\t", "\\t" )
		json_dox = string.replace( json_dox, "\r", "\\r" )
		json_dox = string.replace( json_dox, "\n", "\\n" )
		json_dox = string.replace( json_dox, "'", "\\'")
		
		json_sig = node[1]
		json_sig = string.replace( json_sig, "\t", "\\t" )
		json_sig = string.replace( json_sig, "\r", "\\r" )
		json_sig = string.replace( json_sig, "\n", "\\n" )
		json_sig = string.replace( json_sig, "'", "\\'")


		json_subsys = node[3]
		
		json_blob += "\t\t['%s', '%s', '%s', '%s']" %(node[0], json_sig, json_dox, json_subsys)
		
		node_x += 1
		if( node_x < max_x ):
			json_blob += ",\n"
		else:
			json_blob += "\n\t\t],\n"


json_blob = json_blob[:-2] #trims the final , char
output_blob = "var gizmo_events = {\n%s\n};" %(json_blob)

#print( json_blob )
save_data( "gizmo_events.json", output_blob )

print( output_blob )


if( len( warnings ) > 0 ):
	print("\n*** WARNINGS ****" )
	for warning in warnings:
		print( warning )



