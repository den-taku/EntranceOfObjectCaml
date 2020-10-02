let curry f x y = f (x, y);;

let average (x, y) = (x +. y) /. 2. ;;

let curried_avg = curry average ;;

average (4.0, 5.3) ;;
curried_avg 4.0 5.3 ;;

let uncurry f (x, y) = f x y;; 

let avg = uncurry curried_avg in
  avg (4.0, 5.3)
;;

let rec repeat f n x =
  if n > 0 then repeat f (n-1) (f x) else x
;;

let k (x, y) = y;;

let fib n = 
  let (fibn, _) = repeat (fun (x, y) -> (x + y, x)) n (1, 0)
  in fibn
;;

for i = 0 to 10 do 
  print_int(fib i);
  print_string "\n"
done;;