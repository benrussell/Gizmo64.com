

function leafClick( leaf_div, branch, node_name, dox_source ){

	if( leaf_div != undefined ){

		//if the leaf_div valus is set to null then we're probably loading a bookmark

		var all_active_nav_leaves = document.getElementsByClassName("leaf_active");
		for( var ileaf=0; ileaf < all_active_nav_leaves.length; ileaf++ ){
			var target_leaf = all_active_nav_leaves[ ileaf ];
			target_leaf.className = "leaf";
		}

		leaf_div.className = "leaf_active";
	}//check for null leaf_div


	var leaves = dox_source[branch];
	var leaf = null;

	var node_error = true; //this will catch nodes with no dox data.
	for( var x=0; x<leaves.length; x++ ){
		if( leaves[x][0] == node_name ){
			//alert( leaves[x][1] );
			leaf = leaves[x];
			node_error = false;

			break;
		} //names match?

	} //loop all data blocks looking for a name match



	if( node_error ){
		alert("Could not find the dox node!");
	}else{

		//var content = "<pre class='none'>" + leaf[2] + "</pre>";
		var content = leaf[2];


		if( leaf[3] != undefined ){


			var leaf_tokens = leaf[3].split(".lua");
			if( leaf_tokens.length == 2 ){
				//this is a link to lua firmware source code..
				content += "<a target='_blank' href='https://github.com/benrussell/Gizmo-Firmware/tree/master/firmware/core/" + leaf[3] + "'>View source..</a>";
			}

		}


		setContent( leaf[1], content  );



		//yuck.



		//-detect and decode a bookmark in the URL that we should open automatically in the browser.
		var location_tokens = String(document.location).split("#");
		var base_url = document.location;
		//alert( location_tokens.length );
		if( location_tokens.length == 2 ){
			base_url = location_tokens[0];
		}


		document.location = base_url + "#" + node_name;




	}

return false;

}//end leafClick( node )



function getNewSectionBranch( key ){

	return "<div id='branch_"+key+"' class='branch' onclick='expandBranch(\"" + key + "\");'>" + key + "</div>";

}



function createSectionTreeBranch( key, leaves ){

	//build API event reference
	var newSectionBranch = getNewSectionBranch( key );

	var divBlob = "";

	divBlob += newSectionBranch;
	divBlob += "<div id='branch_leaves_"+key+"' style='display:none' disabled_onclick='expandBranch(\"" + key + "\");'>";

		//create sub items here.
		//var leaves = gizmo_dox_data[key];
		//alert(leaves.length);
		for( x=0; x<leaves.length; x++ ){
			var sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf' onclick='leafClick(this, \"" + key + "\", \"" + leaves[x][0] + "\");'>" + leaves[x][0] + "</div>";
			divBlob += sNewLeaf;
		}

	divBlob += "</div>";


	return divBlob;

}



function buildSectionTree_Events( target_event_name ){

	var divBlob = "";
	var leaves = new Array();

	if( target_event_name == undefined ){ return; }



	var parent_section_name = ""; //detect with code because event signature does not supply grouping data very well.


	//build API event reference
	for( key in gizmo_events ){

		var sNewBranch = "<div id='branch_"+key+"' class='branch' onclick='expandBranch(\"" + key + "\");'>" + key + "</div>";
		divBlob += sNewBranch;

		divBlob += "<div id='branch_leaves_"+key+"' style='display:none' disabled_onclick='expandBranch(\"" + key + "\");'>";

		var leaves = gizmo_events[key];
		//alert(leaves.length);
		for( x=0; x<leaves.length; x++ ){
			var sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf' onclick='leafClick(this, \"" + key + "\", \"" + leaves[x][0] + "\", gizmo_events);'>" + leaves[x][0] + "</div>";

			if( target_event_name == (leaves[x][0]) ){
				//alert("event leaf match");
				parent_section_name = key;
				sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf_active' onclick='leafClick(this, \"" + key + "\", \"" + leaves[x][0] + "\", gizmo_events);'>" + leaves[x][0] + "</div>";

				leafClick(null, key, leaves[x][0], gizmo_events);
			}

			divBlob += sNewLeaf;
		}

		divBlob += "</div>";

	}

	var tree = document.getElementById("navTree_events");
	tree.innerHTML = divBlob;




	if( target_event_name != "" ){
		setTab( 'events' );

		var branchName_dom = "branch_leaves_" + parent_section_name;
		//alert( branchName_dom );
		var branch = document.getElementById( branchName_dom );

		branch.style.display = "";

	}



}



function buildSectionTree_API( api_group, bookmark ){


	var divBlob = "";
	var leaves = new Array();

	//build API function reference
	for( key in gizmo_dox_data ){

		var sNewBranch = "<div id='branch_"+key+"' class='branch' onclick='expandBranch(\"" + key + "\");'>" + key + "</div>";
		divBlob += sNewBranch;

		divBlob += "<div id='branch_leaves_"+key+"' style='display:none' disabled_onclick='expandBranch(\"" + key + "\");'>";

			var leaves = gizmo_dox_data[key];
			//alert(leaves.length);
			for( var x=0; x<leaves.length; x++ ){
				var sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf' onclick='leafClick(this, \"" + key + "\", \"" + leaves[x][0] + "\", gizmo_dox_data);'>" + leaves[x][0] + "</div>";

				if( bookmark == leaves[x][0] ){
					//leaf match, render this with a different CSS class
					sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf_active' onclick='leafClick(this, \"" + key + "\", \"" + leaves[x][0] + "\", gizmo_dox_data);'>" + leaves[x][0] + "</div>";

					//leaf content does not render correctly, fucntion call!

					leafClick(null, key, leaves[x][0], gizmo_dox_data);

				}


				divBlob += sNewLeaf;
			}

		divBlob += "</div>";

	}


	var tree = document.getElementById("navTree_api");
	tree.innerHTML = divBlob;


	if( api_group != "" ){
		//expandBranch( api_group );

		var branchName_dom = "branch_leaves_" + api_group;
		var branch = document.getElementById( branchName_dom );

		branch.style.display = "";

	}


}



function getBranchInfoForKey( key ){

	for( var x=0; x < branch_info_table.length; x++ ){
		if( branch_info_table[x].name == key ){
			return branch_info_table[x];
		}
	}

}//end getBranchInfoForKey


function expandBranch( key ){

	var branchName_dom = "branch_leaves_" + key;
	var branch = document.getElementById( branchName_dom );

	//alert( branchName_dom );


	var branch_info = getBranchInfoForKey( key );

	if( branch_info != undefined ){
		setContent( "Summary: " + key + " API", branch_info.description );
	}else{
		setContent( "Summary: " + key + " API", "no docs" );
	}


	switch( branch.style.display ){
		case "":
			branch.style.display = "none";
			break;

		case "none":
			branch.style.display = "";
			break;

		default:
			branch.style.display = "";
			break;

	} //end: switch(branch.style.display)

}




function setContent( header, body ){



	// Perform a bunch of data transofmr on the body data to transform simple text into a nice HTML layout.

	body = body.trim();
	body = body.replace( /\r\n/g, "\n" );
	//body = body.replace( /\n/g, "<br>" );


	//Magic code to wrap everything in pre tags.
		//every end pre spawns a new block immediately after
		body = body.replace( /\<\/pre\>/g, "</pivot_pre><pivot_pre>" );

		//ever start pre spans an end pre immediate before it.
		body = body.replace( /\<pre\>/g, "</pre><pre>" );

		//finish the pivot move
		body = body.replace( /\<\/pivot_pre\>\<pivot_pre\>/g, "</pre><pre>" );

		//wrap entire body in pre tags
		body = "<pre>" + body + "</pre>";



	//replace empty pre instances
	body = body.replace( /\<pre\>\<\/pre\>/g, "" );


	body = body.replace( /\<code\>/g, "<pre class='code_bg'><code>" );
	body = body.replace( /\<\/code\>/g, "</code></pre>" );


	//be specific about our language usages.
	body = body.replace( /\<code\>\n/g, "<code>" ); //kill any blank first line code blocks
	body = body.replace( /\<code\>/g, "<code data-language=\"lua\">" );




	//grab DOM nodes and start pumping content.
	var div_header = document.getElementById("div_docBlock_Header");
	var div_content = document.getElementById("div_docBlock_Content");

	//refresh content.
	div_header.innerHTML = header;
	div_content.innerHTML = ""; //erase contents

	//generate new contents including syntax-highlighting if needed.
	var div = document.createElement('div');
	div.innerHTML = body; //'<p>code:</p><pre><code data-language="lua">local bla = "foo";</code></pre>';
	Rainbow.color(div, function() {
		var div_content = document.getElementById("div_docBlock_Content");
		div_content.appendChild(div);
	});



	// ...additional user contrib content..
	var div_extraContent = document.getElementById('div_extraContent');
	div_extraContent.innerHTML = "user contrib for: " + header;


} //end setContent








function OnLoad(){


	//-detect and decode a bookmark in the URL that we should open automatically in the browser.
	var bookmark = location.hash.replace("#","");

	//-if we found a bookmark we will decode it here so we can pass appropriate params to our render functions
	var target_api_group = "";
	var target_api_function = "";
	var target_event_name = "";

	//if we have a bookmark we examine it to detect whether it is an Event Name or a function signature.
	if( bookmark != "" ){
		var bookmark_api_tokens = bookmark.split(".");

		if( bookmark_api_tokens.length == 2 ){
			//this is an API signature
			target_api_group = bookmark_api_tokens[0];
			target_api_function = bookmark_api_tokens[1];

		}else{
			//this is an event name
			target_event_name = bookmark;

		}



	}

	//alert( api_group + " / " + api_function );


	buildSectionTree_API( target_api_group, bookmark );
	buildSectionTree_Events( target_event_name );

	OnResize();



/*
	//detect any bookmark #name_data - if found, we auto display the content that best matches.
	//works with events tab at the moment
	//expand to work with function names and event names so we can focus any item in the docs with an easy link
	var location = String(document.location);
	var tokens = location.split("#");
	//alert( tokens[1] );
	if( tokens.length == 2 ){
		var auto_show = tokens[1];

		switch( auto_show ){
			case "events":
				//display events tab.
				setTab( 'events' );
				break;

			default:
				//lookup api function name...

				break;

		}//end switch
	}//end tokens length check
*/


}




function mergeFwData(){
	//merge API function reference
	for( key in gizmo_dox_data_firmware ){

		//var sNewBranch = "<div id='branch_"+key+"' class='branch' onclick='expandBranch(\"" + key + "\");'>" + key + "</div>";
		//divBlob += sNewBranch;

		//divBlob += "<div id='branch_leaves_"+key+"' style='display:none' disabled_onclick='expandBranch(\"" + key + "\");'>";

		var new_leaves = gizmo_dox_data_firmware[key];
		var old_leaves = gizmo_dox_data[key];

		gizmo_dox_data[key] = new_leaves;


	}
}








function OnResize(){
	syncSectionTreeHeight();

	syncContentBodyHeight();

}


function syncContentBodyHeight(){
	//sync the height of the display div for content so that scrollbars work properly.
	var height = document.body.clientHeight;
	height = height - 100;

	document.getElementById('div_docBlock_Content').style.height = height + "px";

}


function syncSectionTreeHeight(){
	var height = document.body.clientHeight;
	var top = parseInt( document.getElementById('navTree_api').style.top );
	//alert( top );

	top = top + 10;

	var new_tree_height = (height- top ) + 'px';
	document.getElementById('navTree_api').style.height = new_tree_height;
	document.getElementById('navTree_events').style.height = new_tree_height;

} //syncSectionTreeHeight()



function doSearch(){
	var q = document.getElementById('txtQuery').value;

	//alert(q);




/*

	var leaves = gizmo_dox_data[branch];
	var leaf = null;

	var node_error = true; //this will catch nodes with no dox data.
	for( var x=0; x<leaves.length; x++ ){
		if( leaves[x][0] == node_name ){
			//alert( leaves[x][1] );
			leaf = leaves[x];
			node_error = false;

			break;
		} //names match?

	} //loop all data blocks looking for a name match



	if( node_error ){
		alert("Could not find the dox node!");
	}else{

		//This code controls updating the content in the RHS panel.

		var div_header = document.getElementById("div_docBlock_Header");
		var div_content = document.getElementById("div_docBlock_Content");

		div_header.innerText = leaf[1];
		div_content.innerHTML = "<pre>" + leaf[2] + "</pre>";

	}


*/




	document.getElementById('branch_leaves_debug').style.display = ''; //??
	//document.getElementById('branch_leaves_gfx').style.display = ''; // display hard coded parent branch opening as example of potential function

}





//control tab toggle for events/api/other
function setTab( target_name ){

	var divTabAPI = document.getElementById("divTabAPI");
	var divTabEvents = document.getElementById("divTabEvents");
	//var divTabAPI = document.getElementById("");


	//Reset all tabs to idle state.
	divTabAPI.className = "tab_idle";
	divTabEvents.className = "tab_idle";


	//Activate target tab.
	switch( target_name ){
		case "api":
			divTabAPI.className = "tab_active";

				//Show/hide content... this will need a wrapper function of its own..
				document.getElementById("navTree_events").style.display = "none";
				document.getElementById("navTree_api").style.display = "";

			break;

		case "events":
			divTabEvents.className = "tab_active";

				//Show/hide content... this will need a wrapper function of its own..
				document.getElementById("navTree_api").style.display = "none";
				document.getElementById("navTree_events").style.display = "";

			break;

		default:
			console.error("Unexpected target name for tab selection: " + target_name);
			break;

	}




}







