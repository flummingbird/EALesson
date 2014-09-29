(
p = ProxySpace.push;

~source = {SinOsc.ar*0.1};
~silence = {|silDur=0.001|
	EnvGen.ar(
		Env([0, 1, 1, 0, 0, 1, 1, 0], [0.01, 2, 0.001, silDur, 0.001, 2, 0.01]),
		doneAction: 2) ! 2
};

~listen = ~source * ~silence;
~listen.play;
)

~silence.spawn([\silDur, 0.03);

	~source = {WhiteNoise.ar*0.01};
	