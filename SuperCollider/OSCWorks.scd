s.boot

thisProcess.openUDPPort(7475);

OSCFunc({ arg msg, time, addr, recvPort; [msg, time, addr, recvPort].postln; }, '/dial1', n);

