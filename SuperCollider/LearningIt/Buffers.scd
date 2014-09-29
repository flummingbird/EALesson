Server.default = s = Server.internal.boot

~houston = Buffer.read(s, "/Applications/SuperCollider/SuperCollider.app/Contents/Resources/sounds/a11wlk01-44_1.aiff");
~chooston = Buffer.read(s, "/Applications/SuperCollider/SuperCollider.app/Contents/Resources/sounds/a11wlk01.wav");


{PlayBuf.ar(1, ~houston)}.play;
{PlayBuf.ar(1, ~chooston)}.play;

