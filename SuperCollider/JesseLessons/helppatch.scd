s.boot // Boot the server, if you need to

// read a whole sound into memory
// note: not *that* columbia, the first one
b = Buffer.read(s, Platform.resourceDir +/+ "sounds/anton.aiff"); // remember to free the buffer later.





SynthDe(\help_PlayBuf,{| out = 0, bufnum = 0|
	Out.ar(out,

PlayBuf.ar(2, rate:1, trigger:1, startPos:0, loop:1, doneAction:0)
	)
}).play(s,[\out, \bufnum, b]);



// trigger one shot on each pulse
SynthDef(\help_PlayBuf, {| out =0, bufnum = 0 |
    var trig;
    trig = Impulse.kr(2.0);
    Out.ar(out,
        PlayBuf.ar(2, bufnum, BufRateScale.kr(bufnum), trig, 0, 0)
    )
}).play(s, [\out, [0, 1], \bufnum, b]);
