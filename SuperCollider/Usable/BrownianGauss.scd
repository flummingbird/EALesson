(
SynthDef(\gabor, {|out, freq = 440, sustain = 1, pan = 1, amp = 0.1, width = 0.25|
	var env = LFGauss.ar(sustain, width, loop: 0, doneAction: 2);
	var son = FSinOsc.ar(freq, 0.5pi, env);
	OffsetOut.ar(out, Pan2.ar(son, pan, amp));

}, \ir ! 5).add;
)




v = Pbindef(\LowGrain, \instrument, \gabor, \freq, Pbrown(0.01,1,0.125)*1000+20, \dur, Pbrown(0.01,0.1), \sustain, Pbrown(0.01,1,0.125)/1000, \amp, Pbrown(0.1,0.7)).play;


w = Pbindef(\MidGrain, \instrument, \gabor, \freq, Pbrown(0.001,1,0.125)*1000, \sustain, Pbrown(0.01,1,0.125)/Pkey(\freq)).play;

x = Pbindef(\HighGrain, \freq, Pbrown(0.01,1,0.125)*4000+2000, \sustain, Pbrown(1, 10, 3)/Pkey(\freq), \pan, Pbrown(-1,1,0.2), \dur, 0.1).play;




