//OSC messages

s.boot;

(
OSCdef.new(
	\button1,
	{
		arg msg, time, addr, port;
		msg.postln;
	},
	'/toggle1'
);
)

//57210 recieving in supercollider


n = NetAddr.new("127.0.0.1", 7475);    // create a NetAddr

NetAddr.langPort;

thisProcess.openUDPPort(7475); // attempt to open 1121

n = NetAddr.new("127.0.0.1", 7475);    // create the NetAddr
// create the OSCresponderNode
o = OSCFunc.newMatching({ arg msg, time, recvPort; [msg, time, recvPort].postln; }, '/tilt1/x', "127.0.0.1", 7475);
o.free;    // remove the OSCFunc when you are done.OSCFunc.trace(true); // Turn posting on
OSCFunc.trace(true);
OSCFunc.trace(false); // Turn posting off