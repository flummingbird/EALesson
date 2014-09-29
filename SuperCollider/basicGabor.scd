(
SynthDef(\gabor0, {|out, freq=440, sustain=0.02, amp=0.2, pan|
	var env = EnvGen.ar(Env.sine(sustain, amp), doneAction: 2);
	var sound = SinOsc.ar(freq) * env;
	OffsetOut.ar(out, Pan2.ar(sound, pan))
}, \ir.dup(5)).add;
)

Synth(\gabor0);
Synth(\gabor0, [\freq, [1000,400].choose, \sustain, 0.005, \amp, 0.1, \pan, 0.5]);

