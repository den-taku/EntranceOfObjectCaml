let pi = 3.1415926535;;

let vol_cone =
  let base = pi *. 2.0 *. 2.0 in
  base *. 5.0 /. 3.0
;;

let cone_of_heightTwo r =
  let base = r *. r *. pi in
  base *. 2.0 /. 3.0
;;

let f x =
  let x3 = x * x * x in
  let x3_1 = x3 + 1 in
  x3 + x3_1
;;

let g x =
  let power3 x = x * x * x in
  (power3 x) + (power3 (x + 1))
;;