__author__ = 'br'




#!/usr/bin/python


__author__ = 'br'
"""
This script will parse all the Gizmo api-source files.
It extracts function comments that are loosely based on Doxygens prefered comment style of
/**
api.foo( argument, [optional argument] )
 Returns: boolean
 Additional comments about function, returns: is optional, if not present assume returns nil.
*/
"""


import os
import re
import string

output_folder = "./output/"

input_folder = "/Users/br/Dropbox/Dev/Gizmo-Firmware/firmware/core/"

counter_headers = 0
counter_src = 0




def save_data( filename, data ):
	fh_module = open( "%s" %(filename), "w")
	fh_module.write( data )
	fh_module.close()




active_lua_stub_filename = ""
#this function is used to append data to an active lua stub file
def write_to_stub_file( data, overwrite_flag=False ):

	return #defused for dev

	filename = active_lua_stub_filename
	if( filename != "" ):
		pass
		if( overwrite_flag ):
			fh = open( "%slua_stubs/%s" %(output_folder, filename), "w" )
		else:
			fh = open( "%slua_stubs/%s" %(output_folder, filename), "a" )
		fh.write( data )
		fh.close()











list_of_api_function_data = {}

tmp_last_signature = ""


if( os.path.exists(input_folder) and os.path.isdir(input_folder) ):
	print("Scanning api headers in folder: %s\n" % (input_folder))


	lua_filename_blacklist = [ "json.lua" ]


	for f in os.listdir(input_folder):
		if( os.path.isdir(f) ):
			pass
			#print("Ignoring sub-folder: " + f)
		else:
			if( f[-4:] == ".lua" ):

				print("")
					
				if( f in lua_filename_blacklist ):
					print("blacklisted: " + f )

				else:
					print("scan: %s" %(f))

					#self.object_file_list.append(input_objects_folder + f)
					counter_headers = counter_headers + 1


					#open the .h file and scan its contents.
					fh_header = open("%s%s" %(input_folder, f))
					data_header = fh_header.read()
					fh_header.close()

					#print(data_header)

					lines = data_header.split("\n")

					doc_block_open = False
					doc_line_counter = 0

					payload = ""

					for l in lines:

						if( l.find("function") >= 0 ):
							print(l)


						# Unfortunately we dont have any doc block data in the firmware scripts at this time. :( 2014.04.05 - br
						# if( doc_block_open ):
							# if( l.strip() == "*/" ):
							# 	doc_block_open = False
						#
							# else:
							# 	if( doc_line_counter == 0 ):
							# 		#first line of doc block is the actual API call.
							# 		tmp_last_signature = l.strip() #assign line to tmp var for documentation hooks a few lines down
							# 		list_of_api_function_data[ tmp_last_signature ] = "" #init key:value binding in dict
							# 	else:
							# 		#second line of doc block is the API call documentation data.
							# 		#print( "last sig: " + tmp_last_signature )
							# 		list_of_api_function_data[ tmp_last_signature ] = list_of_api_function_data[ tmp_last_signature ] + ("%s\n"  %(l))
						#
							# #print("dump dox data: %s" %(l))
							# doc_line_counter = doc_line_counter + 1
						#
						# else:
							# if( l.strip() == "/**" ):
							# 	doc_line_counter = 0
							# 	doc_block_open = True
							# 	#print("doc block opened")

					#write_module_doc_file( f, payload )

else:
	print( "Input folder does not exist: %s\n" % (input_folder) )






###################### Export the HTML documentation. ###############

#print("--- HTML API ---")
tree_block = ""
dox_block = ""
last_clean_p = ""

json_blob = ""

warnings = []

api_sections = {}
api_data = []

for sig in sorted(list_of_api_function_data):
	if( list_of_api_function_data[sig] == "" ):
		#print("Missing dox: %s" %(sig))
		warnings.append( "Missing dox: %s" %(sig) )

	#print(sig)
	#print( list_of_api_function_data[sig] )

	m = re.match("^(.+)\(.*", sig)
	clean_sig = sig

	json_sig = string.strip(sig)
	json_dox = (list_of_api_function_data[sig])

	if( m ):
		clean_sig = str(m.groups(1)[0])
		json_sig = clean_sig
		clean_parent = clean_sig.split(".")[0]
		if( clean_parent != last_clean_p ):
			last_clean_p = clean_parent
			#print("foo")

			if( clean_parent in api_sections ):
				pass
				print("ignore")
			else:
				print("new api section: %s" %(clean_parent))
				api_sections[clean_parent] = []
				active_lua_stub_filename = last_clean_p + ".lua"
				packet = "\n%s = {}\n" %(last_clean_p)
				write_to_stub_file( packet, True )
				packet = ""


		packet = "function %s end\n" %(sig)
		write_to_stub_file( packet )
		packet = ""


	#print( "key: (%s)" %(last_clean_p) )
	#print( "sig: (%s)" %(json_sig) )
	#print( "key: (%s)" %(last_clean_p) )
	if( last_clean_p != "" ):
		api_sections[last_clean_p].append( [json_sig, sig, json_dox] )



#print("\n*** API Sections ***")
#for section in api_sections:
#	print( section )


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


		json_blob += "\t\t['%s', '%s', '%s']" %(node[0], json_sig, json_dox)

		node_x += 1
		if( node_x < max_x ):
			json_blob += ",\n"
		else:
			json_blob += "\n\t\t],\n"


json_blob = json_blob[:-2] #trims the final , char
output_blob = "var gizmo_dox_data = {\n%s\n};" %(json_blob)






#print( json_blob )
save_data( "/Users/br/Dropbox/Dev/Gizmo-Docs_gh-pages/content/autogen/api_dox_firmware.json", output_blob )






if( len( warnings ) > 0 ):
	print("\n*** WARNINGS ****" )
	for warning in warnings:
		print( warning )



