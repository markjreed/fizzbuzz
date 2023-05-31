<?php
for ($i=1; $i<=100; $i++) {
  $p = True;
  if ($i % 3 == 0) { ?>Fizz<?php $p = False; }
  if ($i % 5 == 0) { ?>Buzz<?php $p = False; }
  if ($p) { ?><?= $i ?><?php }?>

<?php
}?>
