//First Lesson

// SHIFT or COMMAND + ENTER to Evaluate Code
//"Hello Whirled"


//we have a client server relationship (NETWORKED MUSIC!)
//To do any musicking: Evaluate:

//Server.default = s = Server.internal.boot
//SO This has to be excecuted ever time we reopen supercollider (seems wonlky, should be a setting.


//play({SinOsc.ar(LFNoise2.kr(3, mul: 100, add: 100), 0.3)})
//play({SinOsc.ar(LFNoise2.kr(6, mul: 200, add: 100), 0.3)})
//play({SinOsc.ar(LFNoise2.kr(12, mul: 50, add: 100), 0.3)})

// KR for control Rate? .kr(note speed?, multiplier (defaults to?), add: hz), gain?
//ar? at R?

// So, Play( What) .ar? ; LFNoise0 => no portamento.
//LFNoise1 portamento, LFNoise2 portamento but above and below note?
// find out. that is what I am hearing.
// This is so much better than chuck.

//play({RLPF.ar(Dust.ar([12, 15]), LFNoise1.ar(1/[3, 4], 1500, 1600), 0.02)})
//play({RLPF.ar(Dust.ar([1, 100]), LFNoise1.ar(1/[3, 4], 1500, 1600), 0.02)})
//play({RLPF.ar(Dust.ar([12, 15]), LFNoise1.ar(1/[2, 200], 440, 880), 0.02)})
       //Resonant Low Pass Filter Applied to low frequency impulses: IE
//Where Ge Wang got his idea for clicks.


//Ok Guessing around here: sounds like impulses, Dust? no idea, probably some stochastic thing
// I am hearing 2 rising and falling scale like thingies
// I've never seen anything that does 1/[3, 4] is that likke picking either 1/3 or 1/4?
//I guess we'll find out

//swithching [12, 15] with [1, 100] and [3, 4] with [1, 10] Means: Longer lines for one sound crunchier
// [1, 100] is the rise and fall. compare to original. yeah the rise and fall are more note heavey and have more sustained sound.
//the [1, 10] makes for more random walking.
// LFNoise1.ar(1/[3, 4],       Frequency HZ, Range HZ;
               //Is ^this rhythmic? yep
              // I think two arguments here mean that there is more than one instance. Not sure of number but it has to be related to the clock.
