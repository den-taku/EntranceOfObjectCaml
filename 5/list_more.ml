let hd (x::rest) = x 
let tl (x::rest) = rest ;;

let null = function [] -> true | _ -> false ;;

let rec nth n l =
  if n = 1 then hd l else nth (n - 1) (tl l) 
let rec take n l =
  if n = 0 then [] else (hd l) :: (take (n-1) (tl l))
let rec drop n l =
  if n = 0 then l else drop (n-1) (tl l)
;;

let ten_to_zero = [10; 9; 8; 7; 6; 5; 4; 3; 2; 1; 0] ;;
nth 4 ten_to_zero ;;
take 8 ten_to_zero ;;
drop 7 ten_to_zero ;;
(* take 19 ten_to_zero ;; *)

let rec length = function 
  [] -> 0
| _ :: rest -> 1 + length rest
;;

let rec append l1 l2 =
  match l1 with
    [] -> l2
  | x :: rest -> x :: (append rest l2)
;;

let rec reverse = function
  [] -> []
| x :: rest -> append (reverse rest) [x] 
;;

let rec revAppend l1 l2 =
  match l1 with 
    [] -> l2
  | x :: rest -> revAppend rest (x :: l2)
;;

let rev x = revAppend x [];;

let rec map f = function 
  [] -> []
| x :: rest -> f x :: map f rest
;;

let rec forall p = function
  [] -> true
| x :: rest -> if p x then forall p rest else false
;;

let rec exists p = function
  [] -> true
| x :: rest -> (p x) || (exists p rest)
;;