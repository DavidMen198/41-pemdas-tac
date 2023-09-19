
        .data
        .text
        .globl future_value


future_value: nop ## public static int equation(int $a0, int $a1, int $a2) {
          # a0: a
          # a1: b
          # a2: c
          # t0: 
          # t1: 
          # t2: 
          # t3:
          # t4:
          # t5:
          # v0: = (a - b) * (a - b) * (b +c);

          add $t0, $a0, $a1   #  $t0 = $a0 + $a1;   // $t0 = l + w
          sub $t1, $a0, $a1   #  $t1 = $a0 - $a1;   // $t1 = l - w
          mult $t1, $t1  #  $t2 = $t1 * $t1;   // $t1 = (l - w) * (l - w)
          mflo $t2
          
          add $t3, $a1, $a2   # $t3 = $a1 + $a2;    // $t3 = w + h
          sub $t4, $a1, $a2   # $t4 = $a1 - $a2;    // $t4 = w - h  
          mult $t2, $t3  # $t5 = $t2 * $t3;    // $t5 = (l - w) * (l - w) * (w + h)
          mflo $t5
          
          move $v0, $t5       #  $v0 = $t5;

          move $v0, $v0       #  return $v0;
          jr $ra