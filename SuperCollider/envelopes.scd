Env.sine.plot;

Env([0, 1, 1, 0], [0.25, 0.5, 0.25] *0.1, \sin).test.plot;

Env([0, 1, 1, 0], [0.25, 0.5, 0.25] *0.1, \lin).test.plot;

Env([0, 1, 1, 0], [0.25, 0.5, 0.25] *0.1, \welch).test.plot;

Env([1,0.001],[0.1], \exp).test.plot;

Env([0.001, 1],[0.1], \exp).test.plot;

Env.perc(0.01, 0.09).test.plot;

(
q = q ? ();
q.makeSinc = { |q, num=1, size=400|
	dup({|x|x=x.linlin(0, size-1, -pi, pi) *num; sin(x)/x},size);
};
a=q.makeSinc(6);
a.plot(bounds: Rect(0,0,409,200), minval: -1, maxval: 1);
)
