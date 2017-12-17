#!/usr/bin/perl -w
use Math::Trig;

		@x0 = (0..2);
        $h = 0.1;
		$i = 2;

	    $xi = $x0[0];
        $yi = 1.3;


        for ($j = 1; $j  < $i ; $j++){
	        $k1 = $h * (acos($xi)+ 3 * $yi);
	        $k2 = $h * (acos($xi + 0.5 * $h)+ 3 * ($yi + 0.5*$k1));
	        $k3 = $h * (acos($xi + 0.5 * $h)+ 3 * ($yi + 0.5*$k2));
	        $k4 = $h * (acos($xi + $h)+ 3 * ($yi + $k3));


	     
       
	        $dyi = (1/6) * ($k1 + 2*$k2 + 2*$k3 + $k4);
	       
	        $xi = $xi + $h;
	        $yi = $yi + $dyi;
	 }
	 print "wynik : $yi";
	 