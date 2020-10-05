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



























































































(* Exception: Match_failure ("//toplevel//", 1, 8). *)
(* let f = function 
  [] -> ()
;;
f [2] ;; *)

(* Exception: Sys_error ": No such file or directory". *)
(* open_in "" ;; *)

(* Exception: Division_by_zero. *)
(* print_string (string_of_int (4 / 0)) ;; *)