
(
var file, soundPath;
~buffers = List[];
Dialog.getPaths({arg paths;
	paths.do({|soundPath|
		soundPath.postln;
		~buffers.add(Buffer.read(s, soundPath););})
	});
)


~buffers.size;

~buffers[2]; //which

~buffers[2].play; //which

(
SynthDef(\samplePlayer, {arg out =0, buf=0,
	rate =1,at=0.01, rel=0.1, pos =0, pSpeed = 0, lev = 0.5;
	var sample, panT, amp, aux;
	sample = PlayBuf.ar(1, buf, rate*BufRateScale.kr(buf), 1, 0, 0);
	panT =FSinOsc.kr(pSpeed);
	amp = EnvGen.ar(Env.perc(at, rel, lev), doneAction: 2);
	Out.ar(out, Pan2.ar(sample, panT, amp));
}).add;
)

Synth(\samplePlayer,[\out, 0, \bufnum, ~buffers[2], \rel, 0.25]);

(
~stut = Routine({ var dur, pos;
	~stutPatt = Pseq([Pgeom(0.01, 1.1707, 18), Pn(0.1, 1),Pgeom(0.1, 0.94, 200)]);
	~str= ~stutPatt.asStream;
	100.do{
		dur = ~str.next;
		dur.postln;
		~sample = Synth("samplePlayer", [\out, 0, \buf, ~bufferedCues[0], \at, 0.1, \rel, 0.05,\pSpeed,0.5]);
		dur.wait;
	}
});
)

~stut.play;
~stut.reset;