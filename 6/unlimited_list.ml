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