

function leafClick( branch, node_name ){

	//alert( branch + "/" + node_name );

	var leaves = gizmo_dox_data[branch];

	var leaf = null;

	var node_error = true; //this will catch nodes with no dox data.
	//for( node in doxBranch ){
	for( x=0; x<leaves.length; x++ ){
	if( leaves[x][0] == node_name ){
	//alert( leaves[x][1] );
	leaf = leaves[x];
	node_error = false;
	}

}

if( node_error ){
	alert("Could not find the dox node!");
	}else{

	var div_header = document.getElementById("div_docBlock_Header");
	var div_content = document.getElementById("div_docBlock_Content");

	div_header.innerText = leaf[1];
	div_content.innerHTML = "<pre>" + leaf[2] + "</pre>";


	}

return false;

}//end leafClick( node )


function buildSectionTree(){

	var tree = document.getElementById("navTree");

	var divBlob = "";

	for( key in gizmo_dox_data ){

	var sNewBranch = "<div id='branch_"+key+"' class='branch' onclick='expandBranch(\"" + key + "\");'>" + key + "</div>";
	divBlob += sNewBranch;

	divBlob += "<div id='branch_leaves_"+key+"' style='display:none' disabled_onclick='expandBranch(\"" + key + "\");'>";

	var leaves = gizmo_dox_data[key];
	//alert(leaves.length);
	for( x=0; x<leaves.length; x++ ){
	var sNewLeaf = "<div id='leaf_"+leaves[x][0]+"' class='leaf' onclick='leafClick(\"" + key + "\", \"" + leaves[x][0] + "\");'>" + leaves[x][0] + "</div>";
	divBlob += sNewLeaf;
	}

divBlob += "</div>";

}

tree.innerHTML = divBlob;

}


function expandBranch( key ){

	var branchName_dom = "branch_leaves_" + key;
	var branch = document.getElementById( branchName_dom );

	//alert( branchName_dom );


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

	tree.style.height = (height-10) + 'px';
	//tree.style.height = (height-74) + 'px';
}



function doSearch(){
	var q = document.getElementById('txtQuery').value;

	alert(q);

	document.getElementById('branch_leaves_debug').style.display = ''; //??
	document.getElementById('branch_leaves_gfx').style.display = ''; // display hard coded parent branch opening as example of potential function

}


