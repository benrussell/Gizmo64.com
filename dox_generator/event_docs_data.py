__author__ = 'br'




#storage for Event-Dox-Comments blocks
known_event_docs = {}


# --------- simtem Events -------------


known_event_docs["OnSystemMenu_AboutGizmo"] = ["""
<pre><code>function OnSystemMenu_AboutGizmo()
--Gizmo64 XPL calls this when it wants to display the HotFix which is crafted from Lua widgets.
end
</code></pre>
""","menu"]



known_event_docs["OnSystemMenu_HotFix"] = ["""
<pre><code>function OnSystemMenu_HotFix()
--Gizmo64 XPL calls this when it wants to display the About Dialog which is crafted from Lua widgets.
end
</code></pre>
""","menu"]






known_event_docs["OnKickStart"] = ["""
<pre><code>function OnKickStart()
--Called during LuaVM restart. Used to initiate boot process. Detects which script to load for the Players current aircraft.
end
</code></pre>
""","boot"]





known_event_docs["OnError"] = ["""
<pre><code>function OnError()
--Called when a LuaVM error is detected.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
</code></pre>
""","log"]

known_event_docs["OnDebug"] = ["""
<pre><code>function OnDebug()
--Called when a debug message is logged.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
</code></pre>
""","log"]

known_event_docs["OnWarning"] = ["""
<pre><code>function OnWarning()
--Called when a warning message is logged.
--Allows interactive response to scripting errors. Default is connected to the Console extension.
end
</code></pre>
""","log"]






known_event_docs["OnAircraftCrash"] = ["""
<pre><code>function OnAircraftCrash()
--The user crashed the vehicle.
end
</code></pre>
""","sim"]


known_event_docs["OnAircraftLoad"] = ["""
<pre><code>function OnAircraftLoad()
--This function needs to accept an index number telling us which aircraft changed, currently it does not.
--You know -an- aircraft was loaded, you don't know which one, it's kind of irrelevant anyway due to engine issues.(??? - br)
end
</code></pre>
""","sim"]


known_event_docs["OnAircraftUnload"] = ["""
<pre><code>function OnAicraftUnload()
--This function needs to accept an index number telling us which aircraft changed, currently it does not.
--You know an aircraft was unloaded, but not which one.
end
</code></pre>
""","sim"]


known_event_docs["OnAirportChanged"] = ["""
<pre><code>function OnAirportChanged()
--A new airport has been selected
end
</code></pre>
""","sim"]






known_event_docs["OnBeforeReboot"] = ["""
<pre><code>function OnBeforeReboot()
--This hook has been created to give you a chance to cleanup x-planes state.
--This may include releasing overrides, restoring the autopilot/fmc, etc.
end
</code></pre>
""","boot"]


known_event_docs["OnBoot"] = ["""
<pre><code>function OnBoot()
--Gizmo has rebooted, init your code.
--This event is also called when the user first loads your ACF file.
end
</code></pre>
""","boot"]




known_event_docs["OnFirstFrame"] = ["""
<pre><code>function OnFirstFrame()
--OnBoot -> ACF Finishes Loading -> OnFirstFrame
--set any "default acf state" datarefs here.
end
</code></pre>

API: >= 11.5.12
""","boot"]





known_event_docs["OnForceRedraw"] = ["""
<pre><code>function OnForceRedraw()
--The user has exited a full screen X-Plane dialog: Eg: WX/Joystick/Rendering options.
--Does not work for: Load ACF / Change ACF Livery. Checked most others. Please report any that dont work.
end</code></pre>
API: >= 11.5.12
""","sim"]





known_event_docs["OnLiveryChanged"] = ["""
 <pre><code>function OnLiveryChanged()

 --The user has changed their livery, check acf.getLiveryName() for more info.

 end
 </code></pre>

 API >= 11.9.1
 ""","sim"]








known_event_docs["OnMouseClick"] = ["""
<pre><code>function OnMouseClick()
--mouse.click.x, mouse.click.y and mouse.click.e
--are automatically updated by Gizmo before this function is called.
--You may use them immediately.

	sound.say("click: " .. mouse.click.x .. " / " .. mouse.click.y ..
				" / " .. mouse.click.e )

--See the mouse.api module documentation for more details.
end
</code></pre>
""","input"]


known_event_docs["OnMouseWheel"] = ["""
 <pre><code>function OnMouseWheel( x,y, wheel,clicks )
	--x,y in screen coordinates
	--wheel and clicks are int values, unkown details.

 end
 </code></pre>

 ""","input"]








known_event_docs["OnPluginDisable"] = ["""
function OnPluginDisable()
--The plugin has been disabled.
end
""","plugin"]


known_event_docs["OnPluginEnable"] = ["""
function OnPluginEnable()
--The plugin has been enabled.
end
""","plugin"]


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
 ""","plugin"]


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
""","plugin"]









known_event_docs["OnSceneryLoaded"] = ["""
function OnSceneryLoaded()
--New scenery tiles were loaded
end
""","sim"]








known_event_docs["OnScriptError"] = ["""
function OnScriptError( message_string )
--A script error has been thrown.
end
""","lua"]


known_event_docs["OnScriptWarning"] = ["""
function OnScriptWarning( message_string )
--A script warning has been thrown.
end
""","lua"]






known_event_docs["OnSituationLoaded"] = ["""
function OnSituationLoaded()
--A .sit file completed loading.
end
""","sim"]


known_event_docs["OnTrafficCountChanged"] = ["""
 function OnTrafficCountChanged()

	--The number of traffic aircraft has been changed

 end
 ""","sim"]





known_event_docs["OnUpdate"] = ["""
function OnUpdate()
--this is your basic "every frame" function call, do most of your work here.
end
""","sim"]








# --------- 2D Drawing Events -------------


known_event_docs["OnDraw_BeforeGauges"] = ["""
function OnDraw_BeforeGauges()
	--Using this function can be more suitable for mixing Avionics with X-Planes built in items.
	--Combined with the next function you should be able to achieve most tasks.
end
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeGauges_3D"] = ["""
function OnDraw_BeforeGauges_3D()
--3d Panel Phase, gauge background, bezels etc
--The function names have 3D in them but the drawing modes are purely 2D GL.
end
""","GFX 2D"]

known_event_docs["OnDraw_BeforeLastCockpit"] = ["""
function OnDraw_BeforeLastCockpit()

end
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeLastScene"] = ["""
function OnDraw_BeforeLastScene()

end
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeLocalMap2D"] = ["""
function OnDraw_BeforeLocalMap2D()

end
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeLocalMapProfile"] = ["""
function OnDraw_BeforeLocalMapProfile()

end
 ""","GFX 2D"]

known_event_docs["OnDraw_BeforeWindows"] = ["""
function OnDraw_BeforeWindows()

end
 ""","GFX 2D"]



known_event_docs["OnDraw_FirstCockpit"] = ["""
	function OnDraw_BeforeFirstCockpit()
	end
	function OnDraw_FirstCockpit()
	end
 ""","GFX 2D"]





known_event_docs["OnDraw_Gauges"] = ["""
function OnDraw_Gauges()
	--You should draw your Panel Gauges / Avionics displays in this function.
end
""","GFX 2D"]


known_event_docs["OnDraw_Gauges_3D"] = ["""
function OnDraw_Gauges_3D()
	--3D panel phase
end
 ""","GFX 2D"]


known_event_docs["OnDraw_LastCockpit"] = ["""
function OnDraw_BeforeLastCockpit()

end
function OnDraw_LastCockpit()

end
""","GFX 2D"]


known_event_docs["OnDraw_Panel"] = ["""
 --These functions are not available yet.
 --function OnDraw_BeforePanel()
 --end
 --function OnDraw_Panel()
 --end
 ""","GFX 2D"]


known_event_docs["OnDraw_LocalMap2D"] = ["""
--WARNING: These functions have ambiguous names that will be changed.
--They have been added "for completeness" and don't fit in with the Gizmo naming conventions as they are.
function OnDraw_BeforeLocalMap2D()

end
function OnDraw_LocalMap2D()

end
 ""","GFX 2D"]


known_event_docs["OnDraw_LocalMapProfile"] = ["""
function OnDraw_BeforeLocalMapProfile()

end
function OnDraw_LocalMapProfile()

end
 ""","GFX 2D"]







known_event_docs["OnDraw_Windows"] = ["""
function OnDraw_BeforeWindows()

--Draw your own 2d popups here
end
function OnDraw_Windows()

--Draw your own 2d popups here
end
""","GFX 2D"]

known_event_docs["OnDraw_BeforeFirstCockpit"] = ["""
function OnDraw_BeforeFirstCockpit()

end
 ""","GFX 2D"]






# --------- 3D Drawing Events -------------

known_event_docs["OnDraw_BeforeFirstScene"] = ["""
function OnDraw_BeforeFirstScene()

end
 ""","GFX 3D"]

known_event_docs["OnDraw_BeforeAirplanes"] = ["""
function OnDraw_BeforeAirplanes()

end
 ""","GFX 3D"]

known_event_docs["OnDraw_BeforeAirports"] = ["""
function OnDraw_BeforeAirports()

end
 ""","GFX 3D"]




known_event_docs["OnDraw_BeforeTerrain"] = ["""
function OnDraw_BeforeTerrain()

end
 ""","GFX 3D"]

known_event_docs["OnDraw_BeforeVectors"] = ["""
function OnDraw_BeforeVectors()

end
 ""","GFX 3D"]





known_event_docs["OnDraw_FirstScene"] = ["""
function OnDraw_FirstScene()

end
 ""","GFX 3D"]


known_event_docs["OnDraw_Terrain"] = ["""
	function OnDraw_Terrain()

	end
""","GFX 3D"]


known_event_docs["OnDraw_Airports"] = ["""
	function OnDraw_Airports()

	end
 ""","GFX 3D"]


known_event_docs["OnDraw_Vectors"] = ["""
	function OnDraw_Vectors()

	end
""","GFX 3D"]


known_event_docs["OnDraw_World"] = ["""
function OnDraw_World()

--Draw objects in the world next to your aircraft, your aircraft will be drawn after them so effects should integrate well
--Called during: xplm_Phase_Objects
end
 ""","GFX 3D"]





known_event_docs["OnDraw_DebugFlightPath"] = ["""
function OnDraw_DebugFlightPath()
--Use this to draw graphics when x-planes purple flight path is turned on
--The actual SDK phase is currently xplm_Phase_Objects
end
 ""","GFX 3D"]


known_event_docs["OnDraw_Airplanes"] = ["""
function OnDraw_Airplanes()

end
 ""","GFX 3D"]


known_event_docs["OnDraw_LastScene"] = ["""
function OnDraw_LastScene()

end
""","GFX 3D"]


known_event_docs["OnDraw_LocalMap3D"] = ["""
--WARNING: This function needs a name tweak to match the panel drawing signature convetion.

function OnDraw_LocalMap3D()

end

""","GFX 3D"]



#FIXME: delete an item from the list above and test to ensure that it is detected as a new event!


