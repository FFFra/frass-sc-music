s.boot;

(
~fn = {
	arg amp = 0.2;
	var sig, mod;
	mod = SinOsc.kr(freq: 1/4, phase: 3pi/2, mul: 0.5, add: 0.5);
	sig = PinkNoise.ar(amp ! 2);
	sig = sig * mod;
     };
)


x = ~fn.play;

x.release(5);
