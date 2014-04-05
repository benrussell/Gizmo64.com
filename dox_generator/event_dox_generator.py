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


# Documentation data is stored in a different file: event_docs_data.py
from event_docs_data import known_event_docs




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
							#print( "%s <-- duplicate" %(event_name) )
							
						else:
							events_list[ event_name ] = 1
					
					m = re.match(".*\"(_On.*)\".*$", l)
					if( m ):
						event_name = str(m.groups(1)[0])
						match_count += 1

						if( event_name in events_list ):
							events_list[ event_name ] += 1
							#print( "%s <-- duplicate" %(event_name) )

						else:
							events_list[ event_name ] = 1

	# end looping all input files...






# Documentation for each event is stored in this script as structured python data.
# This script performs two main tasks:
# 1. Exporting structured event data into JSON format text for use on the web.
# 2. Scanning the Gizmo source code for events data that we don't have information for.



###################### Export the HTML documentation. ###############

#print("--- HTML API ---")
tree_block = ""
dox_block = ""
last_clean_p = ""

json_blob = ""

warnings = []

api_sections = {}
api_data = []





print("")
for k in sorted(events_list):
	pass
	if( k in known_event_docs ):
		event_name = k
		description = known_event_docs[ k ][0]
		subsim_name = known_event_docs[ k ][1]

		#ensure that we have dict storage for this data.
		if( subsim_name in api_sections ):
			pass
		else:
			api_sections[ subsim_name ] = []

		api_sections[ subsim_name ].append( [ event_name, event_name, description, subsim_name ] )

	else:
		print( "\"%s\"," %(k) ) #event name
		#print("\t NO DOX: %s ***" %(k))

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


		json_subsim = node[3]
		
		json_blob += "\t\t['%s', '%s', '%s', '%s']" %(node[0], json_sig, json_dox, json_subsim)
		
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



