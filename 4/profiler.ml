let rec fib_pair n =
  if n = 1 then (0, 1)
  else 
    let (prev, curr) = fib_pair (n-1) in (curr, curr + prev)
;;

let time : (unit -> 'a) -> 'a * float =
  fun f ->
    let start = Sys.time () in
    let res   = f () in
    let end_  = Sys.time () in
    (res, end_ -. start)
;;

let ex1 = time (fun () -> fib_pair 10);;

let ex2 = time (fun () -> fib_pair 35);;