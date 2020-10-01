let fstint ((x, t) : int * int) = x;;

let fst_ifs ((x, y) : (int * float) * string) = x;;

let fst ((x, y) : 'a * 'b) = x;;

let id x = x;;

let apply f x = f x;;

let double f x = f (f x) ;;

double (fun x -> x + 1) 3;;

double (fun s -> "<" ^ s ^ ">") "abc";;

double double (fun x -> x + 1) 3;;

double double (fun s -> "<" ^ s ^ ">") "abc";;

let fourtimes = double double in
  (fourtimes (fun x -> x + 1) 3);;

let fourtimes = double double;;

fourtimes (fun x -> x + 1) 3;;

let fourtimes' f = double double f ;;
(* equivalent to "let fourtimes' = fun f -> double double f" *)

fourtimes' (fun x -> x + 1) 3;;
fourtimes' (fun s -> "<" ^ s ^ ">") "abc" ;;