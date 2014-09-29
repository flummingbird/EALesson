s.boot

thisProcess.openUDPPort(7475);

OSCFunc({ arg msg, time, addr, recvPort; [msg, time, addr, recvPort].postln; }, '/dial1', n);






~nexus = NetAddr("localhost", )
~nexus.disconnect;


n = NetAddr("127.0.0.1", 57110);

(
~nxListen = OSCresponder(
	n, "/button1/push",
	{|time, responder, message, address|
		[\nxListen, time, message, address].postln;
	}
).add
)

n.sendMsg("/button1/push", 1);


m = NetAddr("127.0.0.1", 57120); // the url should be the one of computer of app 1
m.sendMsg("/button1", "Hello App 1");

~host = NetAddr("localhost", 7471);

~nexus.sendMsg("/toggle1", 2);

~host.disconnect;

s.boot