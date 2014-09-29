
(
var file, soundPath;
~buffers = List[];
Dialog.getPaths({arg paths;
	paths.do({|soundPath|
		soundPath.postln;
		~buffers.add(Buffer.read(s, soundPath););})
	});
)


//
x=~buffers[0];


{ BufRd.ar(1, x, Line.ar(0, BufRateScale.kr(x)*2, 0, BufFrames.kr(x)*2)) }.play;

(
SynthDef(\gabor0, {|out, sustain=0.02, amp=0.2, pan|
	var env = EnvGen.ar(Env.sine(sustain, amp), doneAction: 2);
	var sound = BufRd.ar(1, x, Line.ar(0, BufRateScale.kr(x)*2, 0, BufFrames.kr(x)*2));
	OffsetOut.ar(out, Pan2.ar(sound, pan))
}, \ir.dup(5)).add;
)

Synth(\gabor0);
Synth(\gabor0, [\freq, [1000,400].choose, \sustain, 0.005, \amp, 0.1, \pan, 0.5]);

