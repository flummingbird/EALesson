s.boot;

b = Buffer.read(s, Platform.resourceDir +/+ "sounds/anton.aif");

(
SynthDef(\help_PlayBuf, {| out = 0, bufnum = 0 |
    Out.ar(out,
        PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum),loop:1.0, doneAction:2)
    )
}).play(s, [\out, 0, \bufnum, b]);
)


b = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01.wav");


(
x = { arg rate=1.0;
    BufRd.ar(1, b, Phasor.ar(0, BufRateScale.kr(b) * rate, 0, BufFrames.kr(b)))
}.play;
)

{ BufRd.ar(1, b, SinOsc.ar(0.1)*BufFrames.ir(b))}.play;

//OSCService

thisProcess.openUDPPort(7475);
thisProcess.openPorts; //test if working

o = OSCFunc({ arg /slider1, time, addr, recvPort; [msg, time, addr, recvPort].postln; }, '/goodbye', n);
o.free;    // remove the OSCFunc when you are done.