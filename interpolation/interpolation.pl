#!/usr/bin/perl -w

sub conv{
  @u = @_;
  @v = @_;

   $m = @u;
   $n = @v;

   #print " u: @_";

   @w = ();

    for ( $k = 1; $k < ($m + $n); $k++) {
        $ww = 0.0;
        for ( $j = 0; $j < $k; $j++) {
            if ($j > ($m - 1) || ($k-$j-1) > ($n -1)) {
               next; 
            }
           $ww += $u[$j] * $v[$k-$j-1];
        }
        $w[$k] = $ww;
        #print "w od k : $w[$k]";
    }
    return $w;
}

	@x =  (1.515, 1.52, 1.525, 1.53, 1.535, 1.54, 1.545, 1.55, 1.555, 1.56);
    @y = (0.788551, 0.789599, 0.790637, 0.791667, 0.792687, 0.793698, 0.7947, 0.795693, 0.796677, 0.797653);

    $xLength = @x;
    @r = ();

    for ($i = 0; $i < $xLength; $i++) {
        @w = (1.0);
        for ($j = 0; $j < $xLength; $j++) {
            if ($i != $j) {
            	@tmp = (1.0, $x[$j]);
            	#print " @tmp";
                @w = &conv($w, @tmp);
                for ($k = 0; $k < @w; $k++) {
                    $w[$k] = $w[$k] / ($x[$i] - $x[$j]);
                }
            }
        }
        for ($k = 0; $k < @w; $k++) {
            $r[$k] += $y[$i] * $w[$k];
        }
    }

     print "wynik : @r";
   
