// Fifth Lesson Variables
Server.default = s = Server.internal.boot


(
{
	r=MouseX.kr(1/3, 10);
	SinOsc.ar(mul: Linen.kr(Impulse.kr(r), 0, 1, 1/r))
}.play
)

//doesn't seem to do anything

//

(
p = { //p equals this function
	r= Line.kr(1,20, 60); //rate
	// r =LFTri.kr(1/10)* 3 + 7;
	t= Impulse.kr(r); //trigger
	// t = Dust.kr(r);
	e = Linen.kr(t,0,0.5,1/r);
	f =TRand.kr(1,10,t);
	// f = e + 1 *4;
	Blip.ar([f*100, f*50], f, e)
}.play
)

p.free;

//+++++++++++++++
(
{ //carrier and modulator not linked
	r = Impulse.kr(10);
	c = TRand.kr(100, 5000, r);
	m = TRand.kr(100, 5000, r);
	PMOsc.ar(c, m, 12)*0.3
}.play
)
// ++++++++++++
(
{
	var rate = 4, carrier, modRatio;
	carrier = LFNoise0.kr(rate) * 500 + 700;
	modRatio = MouseX.kr(1, 20.0);
	// modulator expressed as ratio, therefore timber
	PMOsc.ar(carrier, carrier*modRatio, 12)*0.3
}.play
)



(
{
	var rate =  4, carrier, modRatio, ind;
	rate = Line.kr(start: 1, end: 12.0, dur: 60);
	carrier = LFNoise0.kr(freq: rate) * 500 + 700;
	ind = Line.kr(start: 1, end: 12.0, dur: 60);
	modRatio = MouseX.kr(minval: [1, 1],maxval: 2.0);
	env = Linen.kr(gate:1, attackTime:1/rate, susLevel:0.5, releaseTime:0.0);
	PMOsc.ar( carfreq: carrier, modfreq: carrier*modRatio, pmindex: ind, mul: env,)*0.3
}.play
)
