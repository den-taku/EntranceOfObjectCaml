type figure =
    Point
  | Circle of int 
  | Rectangle of int * int 
  | Square of int 
;;

let c = Circle 3 ;;

let figs = [ Point; Square 5; Rectangle (4, 5) ] ;;

let area = function
    Point -> 0
  | Circle r -> r * r * 3 (* elementary school approximation :-) *)
  | Rectangle (lx, ly) -> lx * ly 
  | Square l -> l * l
;;

area c ;;

let rec map f = function 
  [] -> []
| x :: rest -> f x :: map f rest
;;

map area figs ;;