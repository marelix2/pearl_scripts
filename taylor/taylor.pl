#!/usr/bin/perl -w

    @x = ( 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2);
    @y = ( 0, 0.182322, 0.336472, 0.470002, 0.587787, 0.693417, 0.788457);
    $h = $x[2]-$x[1];

  $fx = 0;
  $tabLength = @x;
  @tmp = ( \@y, \@y, \@y,\@y,\@y,\@y, \@y);



  for ($j = 1; $j  < $tabLength ; $j++){
    for ($i = $tabLength - $j; $i > 0 ; $i--){
      $tmp[$j] -> [$i] = $tmp[$j]->[$i] - $tmp[$j]->[$i-1]; 
    }
    $fx += 1/($j+1) * $tmp[$j] -> [$tabLength - $j];
 }
  $W = $fx * 1.0/$h;

 print "wynik : $W";

