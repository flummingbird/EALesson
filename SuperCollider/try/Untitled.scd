Server.local.boot;
Server.local.quit;

s.boot;
s.quit;

//s is almost always a server

//function == {}

x = {SinOsc.ar(300)}
y = x.play
y.free

//proper formating above

z = {SinOsc.ar(700, mul:0.125)}.play
a= z.free

(
b= {
	arg freq=440, amp =1;
	var sig;
	sig = SinOsc.ar(freq)*amp;
}.play
)

b.set(\freq, 330)



c = b.free