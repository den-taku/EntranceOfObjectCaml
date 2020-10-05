List.length [5; 6; 8] ;;
List.concat [[4; 35; 2]; [1]; [9; -4]] ;;

let q = Queue.create () ;;

Queue.add 1 q ; Queue.add 2 q ;;

Queue.take q ;;
Queue.take q ;;
(* Queue.take q ;; *)

open List ;;

length [3; 9; 10] ;;