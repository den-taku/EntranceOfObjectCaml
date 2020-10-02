let nextrand seed =
  let a = 16807.0 and m = 2147483647.0 in
  let t = a *. seed
  in t -. m *. floor (t /. m)
let rec randlist n seed tail =
  if n = 0 then (seed, tail)
  else randlist (n-1) (nextrand seed) (seed::tail)
;;

randlist 10 1.0 [];;

let rec insert (x: float) = function
  (* Assum the second argument is already sorted *)
  [] -> [x]
| (y :: rest) as l -> if x < y then x :: l else y :: (insert x rest)
;;

let rec insertion_sort = function
  [] -> []
| x :: rest -> insert x (insertion_sort rest)
;;

let rec quick = function
  [] -> []
| [x] -> [x]
| x :: xs -> (* x is the povot *)
  let rec partition left right = function
      [] -> (quick left) @ (x :: quick right)
    | y :: ys -> if x < y then partition left (y :: right) ys
                 else partition (y :: left) right ys
  in partition [] [] xs
;;

let time : (unit -> 'a) -> 'a * float =
  fun f ->
    let start = Sys.time () in
    let res   = f () in
    let end_  = Sys.time () in
    (res, end_ -. start)
;;

let n = fun x -> ();;

let ex1 = time (fun () -> n(insertion_sort (snd (randlist 10000 1.0 []))) );;
let ex2 = time (fun () -> n(quick (snd (randlist 10000 1.0 []))));;