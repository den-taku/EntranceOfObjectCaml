(* Exception: Match_failure ("//toplevel//", 1, 8). *)
let f = function 
  [] -> ()
;;
f [2] ;;

(* Exception: Sys_error ": No such file or directory". *)
open_in "" ;;

(* Exception: Division_by_zero. *)
print_string (string_of_int (4 / 0)) ;;
