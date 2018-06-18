window.onload = function() {

	if (window.location.href=="http:\/\/localhost/OWeb/sigbcatalogue/"){
		document.getElementById('btn-catalogue').className = "btn btn-success active";
		document.getElementById('btn-circulation').className = "btn btn-info";
		document.getElementById('btn-acquisitions').className = "btn btn-warning";
		document.getElementById('btn-emprunts').className = "btn btn-danger";
		document.getElementById('btn-users').className = "btn btn-primary";
		document.getElementById('btn-messages').className = "btn btn-danger";};
	if (window.location.href=="http:\/\/localhost/OWeb/sigbacquisitions/"){
		document.getElementById('btn-catalogue').className = "btn btn-success";
		document.getElementById('btn-circulation').className = "btn btn-info";
		document.getElementById('btn-acquisitions').className = "btn btn-warning active";
		document.getElementById('btn-emprunts').className = "btn btn-danger";
		document.getElementById('btn-users').className = "btn btn-primary";
		document.getElementById('btn-messages').className = "btn btn-danger";};
	if (window.location.href=="http:\/\/localhost/OWeb/sigbcirculation/"){
		document.getElementById('btn-catalogue').className = "btn btn-success";
		document.getElementById('btn-circulation').className = "btn btn-info active";
		document.getElementById('btn-acquisitions').className = "btn btn-warning";
		document.getElementById('btn-emprunts').className = "btn btn-danger";
		document.getElementById('btn-users').className = "btn btn-primary";
		document.getElementById('btn-messages').className = "btn btn-danger";};
	if (window.location.href=="http:\/\/localhost/OWeb/sigbemprunts/"){
		document.getElementById('btn-catalogue').className = "btn btn-success";
		document.getElementById('btn-circulation').className = "btn btn-info";
		document.getElementById('btn-acquisitions').className = "btn btn-warning";
		document.getElementById('btn-emprunts').className = "btn btn-danger active";
		document.getElementById('btn-users').className = "btn btn-primary";
		document.getElementById('btn-messages').className = "btn btn-danger";};
	if (window.location.href=="http:\/\/localhost/OWeb/sigbnewuser/"){
		document.getElementById('btn-catalogue').className = "btn btn-success";
		document.getElementById('btn-circulation').className = "btn btn-info";
		document.getElementById('btn-acquisitions').className = "btn btn-warning";
		document.getElementById('btn-emprunts').className = "btn btn-danger";
		document.getElementById('btn-users').className = "btn btn-primary active";
		document.getElementById('btn-messages').className = "btn btn-danger";};
	if (window.location.href=="http:\/\/localhost/OWeb/sigbmessages/"){
		document.getElementById('btn-catalogue').className = "btn btn-success";
		document.getElementById('btn-circulation').className = "btn btn-info";
		document.getElementById('btn-acquisitions').className = "btn btn-warning";
		document.getElementById('btn-emprunts').className = "btn btn-danger";
		document.getElementById('btn-users').className = "btn btn-primary";
		document.getElementById('btn-messages').className = "btn btn-danger active";};





};