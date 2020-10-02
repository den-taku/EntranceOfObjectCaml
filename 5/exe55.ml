let hd (x::rest) = x 
let tl (x::rest) = rest ;;

let null = function [] -> true | _ -> false ;;

let rec sum_list l =
  if not (null l) then hd l + sum_list (tl l) else 0
;;

let rec max_list l =
  if null(tl l) then hd l 
  else 
    if hd l <= hd (tl l) then max_list (tl l)
    else max_list ((hd l) :: (tl (tl l)))
;;