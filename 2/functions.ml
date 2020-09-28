let dollar_of_yen y = 
  floor( float_of_int(y) /. 111.12 );;

let dollar_of_yen_f y = 
  floor( float_of_int(y) /. 1.1112 ) /. 100.;;

let yen_of_dollar d =
  floor( d *. 111.12 );;

