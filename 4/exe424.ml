let curry f x y = f (x, y);;

let average (x, y) = (x +. y) /. 2. ;;

let curried_avg = curry average ;;

average (4.0, 5.3) ;;
curried_avg 4.0 5.3 ;;

let uncurry f (x, y) = f x y;; 

let avg = uncurry curried_avg in
  avg (4.0, 5.3)
;;