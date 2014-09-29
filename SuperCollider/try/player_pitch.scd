
~b0=Buffer.read(s, "/Users/wwc/Desktop/Buffers/alto_flute");

(
SynthDef.new(\playbuf_test, {
	arg amp = 1, out = 0, buf, rate = 1, t_trig = 1, start = 0, loop = 1, da = 1;
	var sig;
	sig = PlayBuf.ar(1, buf, BufRateScale.kr(buf) * rate, t_trig, start, loop, doneAction:da);
	sig = sig * amp;
	Out.ar(out, sig);
}).add;
)

Synth.new(\playbuf_test, [\buf, ~b0.bufnum]);

s.plotTree;
s.freeAll;

~b0 = Buffer.read(s, "/Users/wwc/Desktop/Buffers/sonarTick.aiff");

//samplerate can cause playback trouble

//BufRatScale, scales

Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, -7.midiratio])

Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, -10.midiratio])

Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, -13.midiratio])

g = Group.new;

(
x = Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, -7.midiratio, \loop, 1, \amp, 0.5], g);
y = Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, -10.midiratio,  \loop, 1, \amp, 0.5 ], g);
z =Synth.new(\playbuf_test, [\buf, ~b0.bufnum, \rate, -15.midiratio,  \loop, 1, \amp, 0.5], g);
)

g.set(\loop, 1);
z.set(\rate, 1.midiratio);