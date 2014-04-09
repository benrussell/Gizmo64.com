

function leafClick( leaf_div, branch, node_name, dox_source ){


	var all_active_nav_leaves = document.getElementsByClassName("leaf_active");
	for( var ileaf=0; ileaf < all_active_nav_leaves.length; ileaf++ ){
		var target_leaf = all_active_nav_leaves[ ileaf ];
		target_leaf.className = "leaf";
	}

	leaf_div.className = "leaf_active";



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

		/*
		if( leaf[3] != undefined ){
			content += "<a target='_blank' href='https://github.com/benrussell/Gizmo-Firmware/tree/master/firmware/core/" + leaf[3] + "'>View source..</a>";
		}
		*/

		setContent( leaf[1], content  );

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



function buildSectionTree_Events(){

	var divBlob = "";
	var leaves = new Array();



	//build API event reference
	for( key in gizmo_events ){

		var sNewBranch = "<div id='branch_"+key+"' class='branch' onclick='expandBranch(\"" + key + "\");'>" + key + "</div>";
		divBlob += sNewBranch;

		divBlob += "<div id='branch_leaves_"+key+"' style='display:none' disabled_onclick='expandBranch(\"" + key + "\");'>";

		var leaves = gizmo_events[key];
		//alert(leaves.length);
		for( x=0; x<leaves.length; x++ ){
			var sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf' onclick='leafClick(this, \"" + key + "\", \"" + leaves[x][0] + "\", gizmo_events);'>" + leaves[x][0] + "</div>";
			divBlob += sNewLeaf;
		}

		divBlob += "</div>";

	}

	var tree = document.getElementById("navTree_events");
	tree.innerHTML = divBlob;

}



function buildSectionTree_API(){

	var divBlob = "";
	var leaves = new Array();

	//build API function reference
	for( key in gizmo_dox_data ){

		var sNewBranch = "<div id='branch_"+key+"' class='branch' onclick='expandBranch(\"" + key + "\");'>" + key + "</div>";
		divBlob += sNewBranch;

		divBlob += "<div id='branch_leaves_"+key+"' style='display:none' disabled_onclick='expandBranch(\"" + key + "\");'>";

			var leaves = gizmo_dox_data[key];
			//alert(leaves.length);
			for( x=0; x<leaves.length; x++ ){
				var sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf' onclick='leafClick(this, \"" + key + "\", \"" + leaves[x][0] + "\", gizmo_dox_data);'>" + leaves[x][0] + "</div>";
				divBlob += sNewLeaf;
			}

		divBlob += "</div>";

	}


	var tree = document.getElementById("navTree_api");
	tree.innerHTML = divBlob;

}


function expandBranch( key ){

	var branchName_dom = "branch_leaves_" + key;
	var branch = document.getElementById( branchName_dom );

	//alert( branchName_dom );

	setContent( "Summary: " + key + " API", "branch info" );


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

	//body = body.replace( /\n/g, "<br>" );

	body = body.replace( /\<code\>/g, "<code data-language=\"lua\">" );




	//grab DOM nodes and start pumping content.

	var div_header = document.getElementById("div_docBlock_Header");
	alert( div_header.innerText );
	div_header.innerText = header; //leaf[1];
	alert(header);

	return;


	var div_content = document.getElementById("div_docBlock_Content");
	div_content.innerHTML = ""; //erase contents

	var div = document.createElement('div');
	div.innerHTML = body; //'<p>code:</p><pre><code data-language="lua">local bla = "foo";</code></pre>';
	Rainbow.color(div, function() {
		var div_content = document.getElementById("div_docBlock_Content");
		div_content.appendChild(div);
	});




	var save_className = div_content.className;
	div_content.className = "";
	div_content.className = save_className;


} //end setContent








function OnLoad(){
	buildSectionTree_API();
	buildSectionTree_Events();

	syncSectionTreeHeight();

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
}


function syncSectionTreeHeight(){
	var height = document.body.clientHeight;

	var top = parseInt( document.getElementById('navTree_api').style.top );
	//alert( top );

	top = top + 10;

	var new_tree_height = (height- top ) + 'px';
	document.getElementById('navTree_api').style.height = new_tree_height;
	document.getElementById('navTree_events').style.height = new_tree_height;

}



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







