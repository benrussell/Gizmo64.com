__author__ = 'br'




#storage for Event-Dox-Comments blocks
known_event_docs = {}


# --------- system Events -------------


known_event_docs["OnSystemMenu_AboutGizmo"] = ["""
<code>function OnSystemMenu_AboutGizmo()
--Gizmo64 XPL calls this when it wants to display the HotFix which is crafted from Lua widgets.
end
</code>
""","system menu"]



known_event_docs["OnSystemMenu_HotFix"] = ["""
<code>function OnSystemMenu_HotFix()
--Gizmo64 XPL calls this when it wants to display the About Dialog which is crafted from Lua widgets.
end
</code>
""","system menu"]



known_event_docs["..._OnClick"] = ["""
<code>function ..._OnClick()

end
</code>
""","script menu"]




known_event_docs["OnKickStart"] = ["""
<code>function OnKickStart()
--Called during LuaVM restart. Used to initiate boot process. Detects which script to load for the Players current aircraft.
end
</code>
""","boot"]





known_event_docs["OnError"] = ["""
<code>function OnError()
--Called when a LuaVM error is detected.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
</code>
""","log"]

known_event_docs["OnDebug"] = ["""
<code>function OnDebug()
--Called when a debug message is logged.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
</code>
""","log"]

known_event_docs["OnWarning"] = ["""
<code>function OnWarning()
--Called when a warning message is logged.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
</code>
""","log"]






known_event_docs["OnAircraftCrash"] = ["""
<code>function OnAircraftCrash()
--The user crashed the vehicle.
end
</code>
""","aircraft"]


known_event_docs["OnAircraftLoad"] = ["""
<code>function OnAircraftLoad()
--This function needs to accept an index number telling us which aircraft changed, currently it does not.
--You know -an- aircraft was loaded, you don't know which one, it's kind of irrelevant anyway due to engine issues.(??? - br)
end
</code>
""","aircraft"]


known_event_docs["OnAircraftUnload"] = ["""
<code>function OnAicraftUnload()
--This function needs to accept an index number telling us which aircraft changed, currently it does not.
--You know an aircraft was unloaded, but not which one.
end
</code>
""","aircraft"]






known_event_docs["OnAirportChanged"] = ["""
<code>function OnAirportChanged()
--A new airport has been selected
end
</code>
""","scenery"]






known_event_docs["OnBeforeReboot"] = ["""
<code>function OnBeforeReboot()
--This hook has been created to give you a chance to cleanup x-planes state.
--This may include releasing overrides, restoring the autopilot/fmc, etc.
end
</code>
""","boot"]


known_event_docs["OnBoot"] = ["""
<code>function OnBoot()
--Gizmo has rebooted, init your code.
--This event is also called when the user first loads your ACF file.
end
</code>
""","boot"]




known_event_docs["OnFirstFrame"] = ["""
<code>function OnFirstFrame()
--OnBoot -> ACF Finishes Loading -> OnFirstFrame
--set any "default acf state" datarefs here.
end
</code>

API: >= 11.5.12
""","boot"]





known_event_docs["OnForceRedraw"] = ["""
<code>function OnForceRedraw()
--The user has exited a full screen X-Plane dialog: Eg: WX/Joystick/Rendering options.
--Does not work for: Load ACF / Change ACF Livery. Checked most others. Please report any that dont work.
end</code>
API: >= 11.5.12
""","sim"]





known_event_docs["OnLiveryChanged"] = ["""
 <code>function OnLiveryChanged()

 --The user has changed their livery, check acf.getLiveryName() for more info.

 end
 </code>

 API >= 11.9.1
 ""","aircraft"]








known_event_docs["OnMouseClick"] = ["""
<code>function OnMouseClick()
--[[
mouse.click.x, mouse.click.y and mouse.click.e
are automatically updated by Gizmo before this function is called.
--You may use them immediately.
--]]

	sound.say("click: " .. mouse.click.x .. " / " .. mouse.click.y ..
				" / " .. mouse.click.e )

--See the mouse.api module documentation for more details.
end
</code>
""","user input"]


known_event_docs["OnMouseWheel"] = ["""
<code>function OnMouseWheel( x,y, wheel,clicks )
--x,y in screen coordinates
--wheel and clicks are int values, unkown details.

end
</code>

""","user input"]








known_event_docs["OnPluginDisable"] = ["""
<code>function OnPluginDisable()
--The plugin has been disabled.
end
</code>
""","plugin"]


known_event_docs["OnPluginEnable"] = ["""
<code>function OnPluginEnable()
--The plugin has been enabled.
end
</code>
""","plugin"]


known_event_docs["OnPluginMessage"] = ["""
Calls for inter plugin comms.

<code>function OnPluginMessage( sig, path, message )
	if( sig == "com.example.plug" )then
	--if we return 1 then Gizmo will ensure that only this function sees this event.
	return 1
	end

    --if we do not return any value Gizmo will continue looking for an event handler for this plugin message type.

 end
 </code>
 ""","plugin"]


known_event_docs["OnPluginMessageEx"] = ["""
Expert calls for inter plugin comms, allows for fine grained control of message handlers.

<code>function OnPluginMessageEx( sig, path, message, integer_param )

	if( sig == "com.example.plug" )then
		--if we return 1 then Gizmo will ensure that only this function sees this event.
		return 1
	end


	--if we do not return any value Gizmo will continue looking for an event handler for this plugin message type.

 end
</code>
""","plugin"]









known_event_docs["OnSceneryLoaded"] = ["""
<code>function OnSceneryLoaded()
--New scenery tiles were loaded
end
</code>
""","scenery"]








known_event_docs["OnScriptError"] = ["""
<code>function OnScriptError( message_string )
--A script error has been thrown.
end</code>
""","lua"]


known_event_docs["OnScriptWarning"] = ["""
<code>function OnScriptWarning( message_string )
--A script warning has been thrown.
end</code>
""","lua"]






known_event_docs["OnSituationLoaded"] = ["""
<code>function OnSituationLoaded()
--A .sit file completed loading.
end</code>
""","sim"]


known_event_docs["OnTrafficCountChanged"] = ["""
<code>function OnTrafficCountChanged()

	--The number of traffic aircraft has been changed

 end</code>
 ""","sim"]





known_event_docs["OnUpdate"] = ["""
<code>function OnUpdate()
--this is your basic "every frame" function call, do most of your work here.
end</code>
""","flightloop"]








# --------- 2D Drawing Events -------------


known_event_docs["OnDraw_BeforeGauges"] = ["""
<code>function OnDraw_BeforeGauges()
	--Using this function can be more suitable for mixing Avionics with X-Planes built in items.
	--Combined with the next function you should be able to achieve most tasks.
end</code>
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeGauges_3D"] = ["""
3D Panel Phase, gauge background, bezels etc

The function names have 3D in them but the drawing modes are purely 2D GL.

<code>function OnDraw_BeforeGauges_3D()

end
</code>
""","GFX 2D"]

known_event_docs["OnDraw_BeforeLastCockpit"] = ["""
<code>function OnDraw_BeforeLastCockpit()

end</code>
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeLastScene"] = ["""
<code>function OnDraw_BeforeLastScene()

end</code>
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeLocalMap2D"] = ["""
<code>function OnDraw_BeforeLocalMap2D()

end</code>
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeLocalMapProfile"] = ["""
<code>function OnDraw_BeforeLocalMapProfile()

end</code>
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeWindows"] = ["""
<code>function OnDraw_BeforeWindows()

end</code>
 ""","GFX 2D"]



known_event_docs["OnDraw_FirstCockpit"] = ["""
<code>function OnDraw_FirstCockpit()

end</code>
 ""","GFX 2D"]





known_event_docs["OnDraw_Gauges"] = ["""
<code>function OnDraw_Gauges()
	--You should draw your Panel Gauges / Avionics displays in this function.
end
</code>
""","GFX 2D"]


known_event_docs["OnDraw_Gauges_3D"] = ["""
3D Panel Phase, gauge background, bezels etc

The function names have 3D in them but the drawing modes are purely 2D GL.

<code>function OnDraw_Gauges_3D()

end
</code>
 ""","GFX 2D"]


known_event_docs["OnDraw_LastCockpit"] = ["""
<code>function OnDraw_LastCockpit()

end
</code>
""","GFX 2D"]




known_event_docs["OnDraw_LocalMap2D"] = ["""
<code>function OnDraw_LocalMap2D()

end
</code>
 ""","GFX 2D"]


known_event_docs["OnDraw_LocalMapProfile"] = ["""
<code>function OnDraw_LocalMapProfile()

end
</code>
 ""","GFX 2D"]







known_event_docs["OnDraw_Windows"] = ["""
<code>function OnDraw_Windows()
	--Draw your own 2d popups here
end
</code>
""","GFX 2D"]


known_event_docs["OnDraw_BeforeFirstCockpit"] = ["""
<code>function OnDraw_BeforeFirstCockpit()

end
</code>
""","GFX 2D"]






# --------- 3D Drawing Events -------------

known_event_docs["OnDraw_BeforeFirstScene"] = ["""
<code>function OnDraw_BeforeFirstScene()

end
</code>
 ""","GFX 3D"]

known_event_docs["OnDraw_BeforeAirplanes"] = ["""
<code>function OnDraw_BeforeAirplanes()

end
</code>
 ""","GFX 3D"]

known_event_docs["OnDraw_BeforeAirports"] = ["""
<code>function OnDraw_BeforeAirports()

end
</code>
 ""","GFX 3D"]




known_event_docs["OnDraw_BeforeTerrain"] = ["""
<code>function OnDraw_BeforeTerrain()

end
</code>
 ""","GFX 3D"]

known_event_docs["OnDraw_BeforeVectors"] = ["""
<code>function OnDraw_BeforeVectors()

end
</code>
 ""","GFX 3D"]





known_event_docs["OnDraw_FirstScene"] = ["""
<code>function OnDraw_FirstScene()

end
</code>
 ""","GFX 3D"]


known_event_docs["OnDraw_Terrain"] = ["""
<code>function OnDraw_Terrain()

end
</code>
""","GFX 3D"]


known_event_docs["OnDraw_Airports"] = ["""
<code>function OnDraw_Airports()

end
</code>
 ""","GFX 3D"]


known_event_docs["OnDraw_Vectors"] = ["""
<code>function OnDraw_Vectors()

end
</code>
""","GFX 3D"]


known_event_docs["OnDraw_World"] = ["""
Draw objects in the world next to your aircraft, your aircraft will be drawn after them so effects should integrate well

Called during: xplm_Phase_Objects (link to SDK?)

<code>function OnDraw_World()

end
</code>
 ""","GFX 3D"]





known_event_docs["OnDraw_DebugFlightPath"] = ["""
Use this to draw graphics when x-planes purple flight path is turned on

The actual SDK phase is currently xplm_Phase_Objects

<code>function OnDraw_DebugFlightPath()

end
</code>
 ""","GFX 3D"]


known_event_docs["OnDraw_Airplanes"] = ["""
<code>function OnDraw_Airplanes()

end
</code>
 ""","GFX 3D"]


known_event_docs["OnDraw_LastScene"] = ["""
<code>function OnDraw_LastScene()

end
</code>
""","GFX 3D"]


known_event_docs["OnDraw_LocalMap3D"] = ["""
<code>function OnDraw_LocalMap3D()

end
</code>

""","GFX 3D"]



#FIXME: delete an item from the list above and test to ensure that it is detected as a new event!


