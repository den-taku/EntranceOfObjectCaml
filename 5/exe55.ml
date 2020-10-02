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

let rec zip l1 l2 =
  if null l1 || null l2 then [] 
  else match (l1, l2) with 
    (x1 :: rest1, x2 :: rest2) -> (x1, x2) :: zip rest1 rest2
;;

let squares r =
  let rec squares_inner r i j l =
    if i * i + j * j > r then l
    else 
      begin
        (* print_int i; print_char ' '; print_int j; print_char '\n'; *)
        squares_inner r i (j+1) (if i*i+j*j=r then (i,j)::l else l) 
       end in
  let rec squares_outer r i l =
    if i * i > r / 2 then l 
    else squares_outer r (i+1) (squares_inner r i 0 l) in
  squares_outer r 0 []
;;