let p = ref 5 and q = ref 2 ;;

(!p, !q) ;;

p := !p + !q ;;

(!p, !q) ;;

let reflist = [p; q; p] ;;

p := 100 ;;

reflist;; (* aliasing *)

print_string "ZZZZZZZZZZZZZZZ\n" ;;

let refp = ref p and refq = ref q;;

!refq := !(!refp);;

(!p, !q);;