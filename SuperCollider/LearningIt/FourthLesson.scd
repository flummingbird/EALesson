

//Fourth Lesson
Server.default = s = Server.internal.boot

(
{
	Blip.ar(
		TRand.kr( //Freq or VCO
			100, 1000, //Range
			Impulse.kr(Line.kr.(1, 20, 60))), //Trigger
		TRand.kr( // num of harmonics or VCF
			1, 10, //range
			Impulse.kr(Line.kr(1, 20, 60))), //Trigger
		Linen.kr( // mul or amp, VCA
			Impulse.kr(Line.kr(1, 20, 60)), //Trigger
			0, //attacke
			0.5, //Sus
			1/Line.kr(1, 20, 60)) //Trigger
	)
}.play
)


//There are 9 Ugens here, but we only need three, but to use only 3 we need variables.

