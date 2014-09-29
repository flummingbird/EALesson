//Buffer tutorial

s.boot


~b0 = Buffer.read(s, "Users/wwc/Desktop/Buffers/Mixdown.wav");

~b0.play;
~b0.zero; //clear
~b0.read.read(s, "Users/wwc/Desktop/Buffers/Mixdown.wav"); //reread
~b0.free; //clears and removes

//files can drag and drop into editor

//frames correspond to length
//They use this and samples interchangeably

~b0.numFrames;

//Channels

~b0.numChannels;


// if two channels, twice as many 'frames'
numSamples = numFrames * numChannels

//read separate channels

~b1 = Buffer.readChannel(s, "/Users/wwc/Desktop/Buffers/sonarTick.aiff", channels:[0])
~b1.play;

~b0.bufnum;
~b1.bufnum;

~b0.query;

//

~b1.play
~b1_part0 = Buffer.read(s, "/Users/wwc/Desktop/Buffers/sonarTick.aiff", 0, s.sampleRate/2);
~b1_part0.play;


~b1_part0.numFrames;

~b1_part1 = Buffer.read(s, "/Users/wwc/Desktop/Buffers/sonarTick.aiff", 2000, ~b1_part0.numFrames-2001);

~b1_part1.play
//

~buffs = Array.new
~folder = PathName.new("Users/wwc/Desktop/Buffers/");
(
~folder.entries.do({
	arg path;
	~buffs = ~buffs.add(Buffer.read(s, path.fullPath));
});
)

~buffs.at(0).play;





