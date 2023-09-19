
public static int future_value(int $a0, int $a1, int $a2) {
// $a0 = l
// $a1 = w
// $a2 = h

     int $t0;
     int $t1;
     int $t2;
     int $t3;
     int $t4;
     int $t5;
     int $v0;

     $t0 = $a0 + $a1;                  // $t0 = l + w
     $t1 = $a0 - $a1;                  // $t1 = l - w
     $t2 = $t1 * $t1;                  // $t2 = (l - w) * (l - w)
     $t3 = $a1 + $a2;                  // $t3 = w + h
     $t4 = $a1 - $a2;                  // $t4 = w - h  
     $t5 = $t2 * $t3;                  // $t5 = (l - w) * (l - w) * (w + h)

     $v0 = $t5;

     return $v0;

}
