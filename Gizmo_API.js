

function leafClick( leaf_div, branch, node_name ){


	var all_active_nav_leaves = document.getElementsByClassName("leaf_active");
	for( var ileaf=0; ileaf < all_active_nav_leaves.length; ileaf++ ){
		var target_leaf = all_active_nav_leaves[ ileaf ];
		target_leaf.className = "leaf";
	}

	leaf_div.className = "leaf_active";



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

		var content = "<pre class='none'>" + leaf[2] + "</pre>";

		if( leaf[3] != undefined ){
			content += "<a href='https://github.com/benrussell/Gizmo-Firmware/tree/master/firmware/core/" + leaf[3] + "'>View source..</a>";
		}

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



function buildSectionTree(){

	var divBlob = "";
	var leaves = new Array();

	/*
	leaves = ["OnDraw_Windows","OnDraw_Gauges_3D"];
	divBlob += createSectionTreeBranch( "Events: Graphics", leaves );

	leaves = ["..._OnMouseDown","..._OnKeyDown"];
	divBlob += createSectionTreeBranch( "Events: Input", leaves );

	leaves = ["OnSituationLoaded","OnAircraftChanged"];
	divBlob += createSectionTreeBranch( "Events: Simulator", leaves );

	leaves = ["...OnUpdate","..."];
	divBlob += createSectionTreeBranch( "Events: Timers", leaves );
	*/


	//build API function reference
	for( key in gizmo_dox_data ){

		var sNewBranch = "<div id='branch_"+key+"' class='branch' onclick='expandBranch(\"" + key + "\");'>" + key + "</div>";
		divBlob += sNewBranch;

		divBlob += "<div id='branch_leaves_"+key+"' style='display:none' disabled_onclick='expandBranch(\"" + key + "\");'>";

			var leaves = gizmo_dox_data[key];
			//alert(leaves.length);
			for( x=0; x<leaves.length; x++ ){
				var sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf' onclick='leafClick(this, \"" + key + "\", \"" + leaves[x][0] + "\");'>" + leaves[x][0] + "</div>";
				divBlob += sNewLeaf;
			}

		divBlob += "</div>";

	}


	var tree = document.getElementById("navTree");
	tree.innerHTML = divBlob;

}


function expandBranch( key ){

	var branchName_dom = "branch_leaves_" + key;
	var branch = document.getElementById( branchName_dom );

	//alert( branchName_dom );

	setContent( "Summary: " + key + " API", "<pre>branch info</pre>" );


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
	var div_header = document.getElementById("div_docBlock_Header");
	var div_content = document.getElementById("div_docBlock_Content");

	div_header.innerText = header; //leaf[1];
	div_content.innerHTML = body; //"<pre>" + leaf[2] + "</pre>";

}








function OnLoad(){
	buildSectionTree();

	syncSectionTreeHeight();

}


function OnResize(){
	syncSectionTreeHeight();
}


function syncSectionTreeHeight(){
	var tree = document.getElementById('navTree');

	var height = document.body.clientHeight;

	tree.style.height = (height- 60 ) + 'px';
	//tree.style.height = (height-74) + 'px';
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


