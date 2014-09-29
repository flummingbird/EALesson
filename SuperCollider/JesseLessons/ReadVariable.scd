//Basic Buffer Player with synth def
s.boot;
//Pick Files
(
var file, soundPath;
~buffers = List[];
Dialog.getPaths({arg paths;
	paths.do({|soundPath|
		soundPath.postln;
		~buffers.add(Buffer.read(s, soundPath););})
	});
)
~buffers.size; // how many
~buffers[0]; //which

//basic player
(
x = {PlayBuf.ar(numChannels: 2,bufnum: 0,rate: 1, trigger: 1,startPos: 0, loop: 1)}.play;
)
//basic variable rate player
(
b = { BufRd.ar(2,2,SinOsc.ar(0.01)* BufFrames.ir(2))}.play;
)
b.free
x.free

BufFrames.ir(0)
//synth def basic player
(
SynthDef(\buffGrind, {
	arg speed = 1, sample = 0;
	var player;
	player = PlayBuf.ar(numChannels: 2,bufnum: sample,rate: speed, trigger: 1,startPos: 0, loop: 1);
	Out.ar(0, player);
}).add;
)

a = Synth.new(\buffGrind;)
a.set(\sample, 0)
a.set(\speed, -1)
a.free;

z = Synth.new(\buffGrind;)
z.set(\sample, 1)
z.set(\speed, -0.5)
z.free;

y = Synth.new(\buffGrind;)
y.set(\speed, -10)
y.set(\sample, 2)
y.free;

//Figure out what BuffFrames.ir() is doing
(
SynthDef(\variPlay, {
	arg sample = 0, rate = 1;
	var player;
	player = BufRd.ar(numChannels: 2,bufnum: sample,phase: SinOsc.ar(rate)* BufFrames.ir(sample), loop: 1);
	Out.ar(0, player);
}).add;
)

c = Synth.new(\variPlay;)
c.set(\sample, 2);
c.set(\rate, -0.1);
c.free;

//Finger player
{ BufRd.ar(1, 0, K2A.ar(MouseX.kr(0, BufFrames.kr(0)))) }.play;