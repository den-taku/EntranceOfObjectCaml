exception Foo ;;

(* raise Foo ;; *)

let f () = if raise Foo then raise Foo else 3 ;;

exception Bar of int ;;

(* raise (Bar 2) ;; *)

let exnlist = [Bar 2; Foo] ;;

let f = function
    Foo -> 0
  | x -> raise x
;;

f Foo ;;

(* f (Bar 4) ;; *)

let rec assoc a = function
    [] -> raise Not_found
  | (a', b) :: rest -> if a = a' then b else assoc a rest
;;

let city_phone = [("Kyoto", "075"); ("Osaka", "06"); ("Tokyo", "03")];;

assoc "Osaka" city_phone ;;

(* assoc "Nara" city_phone ;; *)

(* failwith "foo" ;; *)

try 4 + 3 with Division_by_zero -> 9 ;;
try 1 + 3 / 0 with Division_by_zero -> 9 ;;

let query_city_phone c =
  try assoc c city_phone with Not_found -> "999"
;;

query_city_phone "Osaka" ;;
query_city_phone "Nara" ;;

let time : (unit -> 'a) -> 'a * float =
  fun f ->
    let start = Sys.time () in
    let res   = f () in
    let end_  = Sys.time () in
    (res, end_ -. start)
;;

let rec prod_list = function
    [] -> 1
  | n :: rest -> n * prod_list rest 
;;

let ex1 = time ( fun () -> prod_list [2; 3; 4] );;
let ex2 = time ( fun () -> prod_list [4; 0; 2; 3; 4] ) ;;

let rec prod_list = function
    [] -> 1
  | 0 :: _ -> 0
  | n :: rest -> n * prod_list rest
;;

let ex3 = time ( fun () -> prod_list [2; 3; 4] ) ;;
let ex4 = time ( fun () -> prod_list [4; 0; 2; 3; 4] ) ;;

(* type 'a option = None | Some of 'a ;;  *)

let rec prod_list_aux = function
    [] -> Some 1
  | 0 :: _ -> None
  | n :: rest -> 
    (match prod_list_aux rest with None -> None | Some m -> Some (m * n))
;;

let ex5 = time ( fun () -> prod_list_aux [2; 3; 4] ) ;;
let ex6 = time ( fun () -> prod_list_aux [4; 0; 2; 3; 4] ) ;;

exception Zero_found ;;

let rec prod_list_aux = function
    [] -> 1
  | 0 :: _ -> raise Zero_found
  | n :: rest -> n * prod_list_aux rest 
;;

let prod_list l = try prod_list_aux l with Zero_found -> 0 ;;

let ex7 = time (fun () -> prod_list [2; 3; 4]) ;;
let ex8 = time (fun () -> prod_list [4; 0; 2; 3; 4]) ;;




















































































(* Exception: Match_failure ("//toplevel//", 1, 8). *)
(* let f = function 
  [] -> ()
;;
f [2] ;; *)

(* Exception: Sys_error ": No such file or directory". *)
(* open_in "" ;; *)

(* Exception: Division_by_zero. *)
(* print_string (string_of_int (4 / 0)) ;; *)