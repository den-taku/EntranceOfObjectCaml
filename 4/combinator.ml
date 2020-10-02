let ($) f g x = f (g x);;

let f = ( ~-. ) $ sqrt;;

let id x = x;;

(sqrt $ id) 3.0;;
(id $ sqrt) 3.0;;

let k x y = x;;

let const17 = k 17 in const17 4.0;;

let s x y z = x z (y z) ;;

(* f $ f $ f $ f $ .... (n times) *)
let rec funny f n =
  if n = 0 then id
  else if n mod 2 = 0 then funny (f $ f) (n / 2)
  else funny (f $ f) (n / 2) $ f
;;

let swp x y = k y x;;