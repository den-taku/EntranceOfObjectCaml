type 'a seq = Cons of 'a * (unit -> 'a seq) ;;

let rec from n = Cons (n, fun () -> from (n + 1)) ;;

let head (Cons (x, _)) = x ;;

let tail (Cons (_, f)) = f();;

let rec take n s =
  if n = 0 then [] else head s :: take (n - 1) (tail s)
;;

take 10 (from 4) ;;

let rec mapseq f (Cons (x, tail)) =
  Cons (f x, fun () -> mapseq f (tail ()))
;;

let reciprocals = mapseq (fun x -> 1.0 /. float_of_int x) (from 2) ;;

let rec sift n (Cons (x, f)) = 
  if x mod n != 0 then (Cons (x, (fun () -> sift n (f())))) 
  else (sift n (f()))
 ;;

(* let rec sift n (Cons (x, f)) =
  match f() with (Cons (x', f')) 
    -> if x' mod n != 0 then (Cons (x', f')) else (sift n (f'()))
;; *)

let rec sieve (Cons (x, f)) = Cons (x, fun () -> sieve ( sift x (f()))) ;;


let primes = sieve (from 2) ;;

take 20 primes ;;

let rec nthseq n (Cons (x, f)) =
  if n = 1 then x else nthseq (n - 1) (f())
;;

nthseq 1000 primes ;;