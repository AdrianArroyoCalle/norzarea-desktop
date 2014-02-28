function start(){
	console.log("SERVER STARTED");
	var file = Components.classes["@mozilla.org/file/directory_service;1"].
	getService(Components.interfaces.nsIProperties).
	get("AChrom", Components.interfaces.nsIFile);
	file.append("content")
	file.append("norzarea-gh-pages");
	let server=new HttpServer();
	server.registerDirectory("/",file);
	server.start(6677);
	document.getElementById("navigator").loadURI("http://localhost:6677/index.html");
}
