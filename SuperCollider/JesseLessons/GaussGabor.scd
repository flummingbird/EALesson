(
SynthDef(\gabor, {|out, freq = 440, sustain = 1, pan = 1, amp = 0.1, width = 0.25|
	var env = LFGauss.ar(sustain, width, loop: 0, doneAction: 2);
	var son = FSinOsc.ar(freq, 0.5pi, env);
	OffsetOut.ar(out, Pan2.ar(son, pan, amp));

}, \ir ! 5).add;
)


(
Pbindef(\grain,
	\instrument, \gabor, \freq, 1000, \dur, 0.5, \sustain, 20/1000, \amp, 0.2
).play;
)

Pbindef(\grain, \sustain, 10/Pkey(\freq));
Pbindef(\grain, \sustain, 5/Pkey(\freq));
Pbindef(\grain, \sustain, 3/Pkey(\freq));
Pbindef(\grain, \sustain, 2/Pkey(\freq));
Pbindef(\grain, \sustain, 1/Pkey(\freq));


Pbindef(\grain, \sustain, Pseq((10..1)) / Pkey(\freq)).play


g = Group.new;

(
x = Pbindef(\grain, \sustain, Pbrown(1, 10, 3) / Pkey(\freq), \dur, 0.1).play;
y =  Pbindef(\grain, \sustain, Pbrown(10, 10, 3) / Pkey(\freq), \dur, 0.1).play;
z = Pbindef(\grain, \sustain, Pbrown(3, 20, 3) / Pkey(\freq), \dur, 0.1).play;
)


Pbindef(\grain, \sustain, Pbrown(1, 30, 3) / Pkey(\freq), \dur, 0.05).play;