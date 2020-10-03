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

let enclosing_square = function
    Point -> Square 1
  | Circle r -> Square (r * 2)
  | Rectangle (_, l) | Square l -> Square l
;;

let similar x y =
  match (x, y) with 
      (Point, Point) | (Circle _, Circle _) | (Square _, Square _) -> true
    | (Rectangle (l1, l2), Rectangle (l3, l4)) -> (l3 * l2 - l4 * l1) = 0
    | _ -> false
;;

similar (Rectangle (2, 4)) (Rectangle (1, 2)) ;;