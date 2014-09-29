s.boot;

~b0 = Buffer.read(s,  "/Users/wwc/Desktop/Buffers/Mug.aiff");

(
SynthDef.new(\bufrd_loop, {
	arg amp=1, out=0, buf, start, end, rate=1;
	var sig, ptr, phs;
	ptr = Line.ar(start, end, BufDur.kr(buf), doneAction:2);
	phs = Phasor.ar(0, BufRateScale.kr(buf)*rate, start, end);
	sig = BufRd.ar(1, buf, phs);
	sig = sig * amp;
	Out.ar(out, sig);
}).add;
)

Synth.new(\bufrd_test, [\buf, ~b0.bufnum, \start, 0, \end, ~b0.numFrames-1]);

Sweep
LFSaw
 