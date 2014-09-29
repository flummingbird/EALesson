//Details on arguments

Server.default = s = Server.internal.boot


play{PMOsc.ar(440, 550, 7)} //Ordered args no lables

//help is command D


{PMOsc.ar(40, MouseY.kr(1, 550), MouseX.kr(1, 15))}.play //Ugens as arg

{PMOsc.ar(carfreq: 100, modfreq: 500, pmindex: 10, mul: 0.4)}.play //keywords for arg in order

{PMOsc.ar(carfreq:100, mul:0.5, pmindex:10, modfreq:500)}.play // mixed around order with keywords

{SinOsc.ar( mul: MouseX.kr(0, 1.0))}.scope

