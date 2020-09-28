let dollar_of_yen y = 
  floor( float_of_int(y) /. 111.12 );;

let dollar_of_yen_f y = 
  floor( float_of_int(y) /. 1.1112 ) /. 100.;;

let yen_of_dollar d =
  floor( d *. 111.12 );;

let capitalize c =
  let c_int = int_of_char c in
    if 97 <= c_int && c_int <= 122 then char_of_int (c_int - 32)
    else char_of_int c_int
;;