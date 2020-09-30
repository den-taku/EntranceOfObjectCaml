let concat (s1, s2) = s1 ^ s2 ;;

let concat_curry s1 = fun s2 -> s1 ^ s2 ;;

let add_title = concat_curry "Mr. ";;
add_title "Igarashi";;

let concat_curry2 = fun s1 s2 -> s1 ^ s2;;

(+);;

( * ) 2 3;;

let curry3 a = fun b -> fun c -> a + b + c ;; 
let curry3' = fun a b c -> a + b + c ;;

let add3 = curry3 3;;

let (^-^) x y = x * 2 + y * 3;;
9 ^-^ 6 ;;

let (!!) x = x + 1;;

(!!) ;;
!! 3;;