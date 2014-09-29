s.boot


e = Env.sine.asSignal(400).as(Array);
w = Array.fill(400, {|i| (i * 2pi/40).sin});

g = e * w;

[e, w, g].flop.flat.plot("envelope, wave, gain", Rect(0, 0, 408, 600), numChannels: 3);

