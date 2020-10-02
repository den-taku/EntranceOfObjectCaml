[3; 9; 0; -10];;

let week = ["Sun"; "Mon"; "Tue"; "Wed"; "Thu"; "Fri"; "Sat"];;

let oddnums = [3; 9; 253] ;;
let more_oddnums = 99 :: oddnums ;;
let evennums = 4 :: 10 :: [256; 12] ;;
[];;

let boollist = true :: false :: [] ;;
let campuslist = "Yoshida" :: "Uji" :: "Katsura" :: [] ;;

[(fun x -> x + 1); (fun x -> x * 2)] ;;
[1; 2; 3] :: [[4; 5]; []; [6; 7; 8]] ;;

(* let sum_list3 ([x; y; z]) = x + y + z ;; *)

let rec sum_list l = 
  match l with 
    [] -> 0
  | n :: rest -> n + (sum_list rest) 
;;

let rec max_list l =
  match l with 
    [x] -> x
  | n1 :: n2 :: rest -> 
    if n1 > n2 then max_list (n1 :: rest) else max_list (n2 :: rest)
;;