//Sixth Lesson

{SinOsc.ar}.play // generates a temp_number synth
// names the SynthDef and output bus 0, Left explicitely

SynthDef("sine", {out.ar(0, SinOsc.ar)}).play // create a synthdef and play immediately

SynthDef("sine", {Out.ar(1, SinOsc.ar)}).play // right channel

SynthDef("one_tone_only", {
	var out, freq = 400;
	out = SinOsc.ar(freq);
	Out.ar(0, out)
}).add
)


SynthDef("different_tones", {
	arg freq= 440;
	var out;
	out = SinOsc.ar(freq)*0.3;
	Out.ar(0, out)
}).play

//