//First Lessons part 2

play({
	var sines = 10, speed = 10;
	Mix.fill(sines,
		{arg x;
			Pan2.ar(
				SinOsc.ar(x+1*100,
					mul: max(0,
						LFNoise1.kr(speed) +
						Line.kr(1, -1, 300)
					)
), rand2(1.0))})/sines})




//wow that is super readable compared with how most chuck exampels are. Great that we are already incorporating our own defined variables. I like this. All the advantages of Csound and Chuck with less hangups.

// harder to select, for excecution, but hey, not connecting patchcords is lovely.

//Ok so when am I changing x, Isn't X just zero? 1+*100 why do we have X?
//I think what is happening is arg x referes to each individual sine in 'sines'
// is x standing for instance number? this is so much better than poly!

//so you don't have to select the entire thing! just shift + enter at end of line, But doesn't work with multi line sutff :-(