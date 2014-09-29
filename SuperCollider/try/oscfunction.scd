(
z = {
	var freq, sig;
	freq = LFNoise0.kr(8, 400, 600);
	sig = SinOsc.ar(freq);
}.play;
)

z.free

(
z = {
	arg noiseHz=8;
	var freq, sig;
	freq = LFNoise0.kr(noiseHz).exprange(400, 600); //favor lower nums
	sig = SinOsc.ar(freq);
}.play;
)


z.set(\noiseHz, 32)
z.set(\noiseHz, exprand(4,64));
z.free


