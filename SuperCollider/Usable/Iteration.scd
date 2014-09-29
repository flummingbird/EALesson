//Iteration

Collection

Iteration

Do

[1, 2, 3, 9, 8, 7, 6].do{"hello!".postln};

(
x = Array.newClear(5);
[1, 2, 3, 9, 8, 7, 6].do{
	arg item, count;
	[count, item.squared].postln;
}
)


x;

z= [1,2,3,4,0.4,0,4].collect(_.squared);

z;


5.do;
[0,1,2,3,4].do{arg item; item.postln}

5.do{arg item; item.postln}

x = {VarSaw.ar(40!2, 0, 0.05)}.play;
x.free;


s.boot


(
SynthDef.new(\iter, {
	//arg freq = 40;
	var temp, sum;
	sum = 0;
	//env = EnvGen.kr(
		//Env.perc(0.01, 5, 1, -2),
		//doneAction:2
	//);

	10.do{
		temp = VarSaw.ar(
			40 *{Rand(0.99,1.02)}!2,
			{Rand(0.0, 1.0)}!2,
			{ExpRand(0.005, 0.05)}!2
		);
		sum = sum + temp;
	};
	sum = sum * 0.05; //* env;
	Out.ar(0, sum);
}).add;
)


x=Synth.new(\iter);
x.free

(
SynthDef.new(\iter, {
	arg freq = 40;
	var temp, sum;
	sum = 0;
	//env = EnvGen.kr(
	//	Env.perc(0.01, 5, 1, -2),
	//	doneAction:2
	//);

	10.do{
		temp = VarSaw.ar(
			freq *{Rand(0.99,1.02)}!2,
			{Rand(0.0, 1.0)}!2,
			{ExpRand(0.005, 0.05)}!2
		);
		sum = sum + temp;
	};
	sum = sum * 0.05; // env;
	Out.ar(0, sum);
}).add;
)
g= Group.new;

(
x = Synth.new(\iter, [ \freq, 40]);
y = Synth.new(\iter, [ \freq, 80]);
z = Synth.new(\iter, [ \freq, 160]);
)


y = Synth.new(\iter);
y = Synth.new(\iter, [\freq, 80]);


y.free;


(
[53,52,54,51].do{
	arg pitch;
	Synth.new(\iter, [\freq, pitch]);
}
)