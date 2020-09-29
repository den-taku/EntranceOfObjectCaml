let rec fib n = 
  if n = 1 || n = 2 then 1 else fib(n-1) + fib(n-2)
;;

let rec fib_pair n =
  if n = 1 then (0, 1)
  else 
    let (prev, curr) = fib_pair (n-1) in (curr, curr + prev)
;;

let rec even n = (* works for positive intergers *)
  if n = 0 then true else odd(n-1)
and odd n =
  if n = 0 then false else even(n-1)
;;

let rec pos n = 
  neg (n-1) +. 1.0 /. (float_of_int (4 * n + 1))
and neg n = 
  if n < 0 then 0.0
  else pos n -. 1.0 /. (float_of_int (4 * n + 3))
;;