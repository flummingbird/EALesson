(
Pbindef(\grain4,
	\instrument, \percSin, \sustain, 0.03, \amp, 0.2,
	\freq, Pshuf([1000, 600, 350, 250]), \dur, 0.005
).play;

Tdef(\grain, {loop {Pbindef(\grain4).play; 1.wait} }).play;
)

//fixed order
Pbindef(\grain4, \freq, Pseq([100, 600, 350, 250].scramble));

//different order
Pbindef(\grain4, \freq, Pshuf([100, 600, 350, 250]));