// SC Lesson 7 Buffers

Server.default = s = Server.internal.boot

~houston = Buffer.read(s, "sounds/a11wlk01-44_1.aiff");
~chooston = Buffer.read(s, "sounds/a11wlk01.wav");

{PlayBuff.ar(1, ~houston)}.play;
{PlayBuff.ar(1, ~chooston)}.play;




( // speed and direction change
{
	var speed, direction;
	speed = LFNoise-.kr(12) * 0.2 + 1;
	direction =LFClipNoise.kr(1/3);
	PlayBuf.ar(1, ~houston, (speed*direction), loop: 1);
}.play
)

(
~kbus1 =Bus.control;
~kbus2 = Bus.control;
{
	var sp[eed, direction;
		speed = In.kr(~kbus1, 1) *0.2 +1;
		direction = In.kr(~kbus2);
		PlayBuf.ar(1, ~chooston, (speed *direction), loop: 1);
	}.play;
)
(
{Out.kr(~kbus1, LFNoise0.kr(12))}.play;
{Out.kr(~kbus2, LFClipNoise.kr(1/4))}.play;
)

(
{
	var speed, direction;
	speed = In.kr(~kbus1, 1)*0.2 +1;
	direction = In.kr(~kbus2);
	Out.ar(1, PlayBuf.ar(1, ~houston, (speed*direction), loop: 1));
}.play;
)
	