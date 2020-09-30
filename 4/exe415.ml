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

let rec pow'(x, n) = (* x ^ n *)
  if n = 0 then 1
  else if n = 1 then x 
  else pow'(x * x, n / 2) * if even n then 1 else x
;;

let rec even n = (* works for positive intergers *)
  if n = 0 then true else odd(n-1)
and odd n =
  if n = 0 then false else even(n-1)
;;

let pow x = fun n -> pow'(x, n);;

let cube x = pow x 3;;

(* int -> int -> int -> int *)
let f a = fun b -> fun c -> fun d -> a * b * c * d;;
let f = fun a b c d -> a * b * c * d;;

(* (int -> int) -> int -> int *)
let g (f: int -> int) = fun (a:int) -> f a;;

(* (int -> int -> int) -> int *)
let h (f: int -> int -> int) =  f 1 2 ;;  