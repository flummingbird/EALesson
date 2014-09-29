b = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01.wav");
s.boot
// indexing with a phasor
{ BufRd.ar(1, b, Phasor.ar(0, BufRateScale.kr(b), 0, BufFrames.kr(b))) }.play;

// indexing by hand
{ BufRd.ar(1, b, K2A.ar(MouseX.kr(0, BufFrames.kr(b)))) }.play;

b.free