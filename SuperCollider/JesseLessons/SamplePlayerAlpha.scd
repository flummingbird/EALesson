(
// read a whole sound into memory
s = Server.local;
// note: not *that* columbia, the first one
b = Buffer.read(s,"sounds/a11wlk01.wav"); // remember to free the buffer later.
)

SynthDef("help_PlayBuf", { arg out=0,bufnum=0;
	Out.ar(out,
		PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum))
	)
}).play(s,[\out, 0, \bufnum, b.bufnum]);

Note again that the number of channels must be fixed for the SynthDef. It cannot vary depending on which buffer you use.


// loop is true
SynthDef("help_PlayBuf", { arg out=0,bufnum=0;
	Out.ar(out,
		PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum), loop: 1.0)
	)
}).play(s,[\out, 0, \bufnum, b.bufnum]);



// trigger one shot on each pulse
SynthDef("help_PlayBuf", { arg out=0,bufnum=0;
	var trig;
	trig = Impulse.kr(2.0);
	Out.ar(out,
		PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum), trig, 0, 0)
	)
}).play(s,[\out, 0, \bufnum, b.bufnum]);


// trigger one shot on each pulse
SynthDef("help_PlayBuf", { arg out=0,bufnum=0;
	var trig;
	trig = Impulse.kr(XLine.kr(0.1, 100, 30));
	Out.ar(out,
		PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum), trig, 5000, 0)
	)
}).play(s,[\out, 0, \bufnum, b.bufnum]);




// mouse control of trigger rate and startpos
SynthDef("help_PlayBuf", { arg out=0, bufnum=0;
	var trig;
	trig = Impulse.kr(MouseY.kr(0.5,200,1));
	Out.ar(out,
		PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum), trig, MouseX.kr(0, BufFrames.kr(bufnum)), 1)
	)
}).play(s,[\out, 0, \bufnum, b.bufnum]);



// accelerating pitch
SynthDef("help_PlayBuf", { arg out=0,bufnum=0;
	var rate;
	rate = XLine.kr(0.1, 100, 60);
	Out.ar(out,
		PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum)*rate, 1.0, 0.0, 1.0)
	)
}).play(s,[\out, 0, \bufnum, b.bufnum]);



// sine wave control of playback rate. negative rate plays backwards
SynthDef("help_PlayBuf", { arg out=0,bufnum=0;
	var rate;
	rate = FSinOsc.kr(XLine.kr(0.2, 8, 30), 0, 3, 0.6);
	Out.ar(out,
		PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum) * rate, 1, 0, 1)
	)
}).play(s,[\out, 0, \bufnum, b.bufnum]);


// zig zag around sound
SynthDef("help_PlayBuf", { arg out=0,bufnum=0;
	var rate;
	rate = LFNoise2.kr(XLine.kr(1, 20, 60), 2);
	Out.ar(out,
		PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum) * rate, 1, 0, 1)
	)
}).play(s,[\out, 0, \bufnum, b.bufnum]);


b.free;