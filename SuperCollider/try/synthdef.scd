//tut 3 online

//synth def
//recipe for sound


s.boot

(
z = {
	arg noiseHz=8;
	var freq, amp, sig;
	freq = LFNoise0.kr(noiseHz).exprange(200, 1000);
	amp = LFNoise1.kr(12).exprange(0.02,1);
	sig = SinOsc.ar(freq) *amp;
}.play;
)

z.free

(
SynthDef.new(\bily,  {
	arg noiseHz=8;
	var freq, amp, sig;
	freq = LFNoise0.kr(noiseHz).exprange(200, 1000);
	amp = LFNoise1.kr(12).exprange(0.02,1);
	sig = SinOsc.ar(freq) *amp;
	Out.ar(0, sig); //required for synth defs
}).add;
)

x = Synth.new(\bily);

x = Synth.new(\bily,[\noiseHz, 32]);

x.free;