~host = NetAddr("localhost", NetAddr.langPort);


thisProcess.openUDPPort(7475);
~nexus =NetAddr("localhost", 7475);

~nexus.sendMsg("/testMsg", 42, "string", pi);


~host.sendMsg("/testMsg", 42, "string", pi);

~host.sendBundle(0.2, ["/testMsg", 42, "string", pi], ["/testMsg", 183]);

(
~responder = OSCresponder(
	~nexus, "/button1",
	{|time, responder, message, address|
		[\responder, time, message, address].postln;
}).add;
)

