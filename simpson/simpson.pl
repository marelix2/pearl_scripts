#!/usr/bin/perl -w
sub fx{
	my $x = shift;
	 #print " x: $x \n";
	    return ($x +1.9 ) * sin( $x/3);

}
	
    #zmienne
    $a = 1.0;
    $b = 2.0;
    $n = 10;


    $wynik = 0;
    $i = 0;
    $h = ($b - $a) / $n;


    #tablice
    @x = (1 ..$n);
    @y = (1 ..$h);

    $x[1] = $a;

    for( $i = 2; $i<= $n+1 ; $i++){
      $x[$i] = $x[1] + ($i - 1) * $h;
     
      
    }
    
    
    for ($i = 1; $i <= $n+1; $i++){
    	#print "$i \n";
      $y[$i] = &fx($x[$i]);
       #print "y: $y[$i] \n";

    }
    
    for ($i = 1; $i<= $n+1; $i++){
      if (($i == 1) || ($i == $n + 1)){
        $wynik = $wynik + $y[$i];
    }
      else
      {
        if (($i % 2 ) == 0){
          $wynik = $wynik + 4 * $y[$i];
        }
        else {
          $wynik = $wynik + 2 * $y[$i];
        }
      }
    }
          
    $wynik = $wynik * ($h / 3); 

    print "wynik : $wynik"   ;
