let concat (s1, s2) = s1 ^ s2 ;;

let concat_curry s1 = fun s2 -> s1 ^ s2 ;;

let add_title = concat_curry "Mr. ";;
add_title "Igarashi";;