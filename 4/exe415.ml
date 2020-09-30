(* 4.1 *)
let integral (f, a, b) =
  let d = 0.1e-2 in
  let i = (b -. a) /. d in
  let rec sigma (f', i') = 
    if 0. -. d <= i' && i' <= 0. +. d then 0.
    else (f'(a +. (i' -. 1.) *. d) +. f(a +. i' *. d)) *. d /. 2. 
      +. sigma(f', i' -. 1.) in
  sigma(f, i)
;;

let pi = 3.14;;
integral(sin, 0., pi);;

(* 4.1 *)

(* let pow x = fn n ->   *)