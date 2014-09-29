NetAddr.localAddr;

thisProcess.openUDPPort(7475)

OSCFunc({arg msg, time, addr, recvPort; [msg, time, addr, recvPort].postln;}'/goodbye', n);

OSCFunc.trace(true); // Turn posting on

OSCdef


OSCdef('/xy1');
