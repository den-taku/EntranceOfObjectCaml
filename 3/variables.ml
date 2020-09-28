let x = 2 and y = 1;;
let x = y and y = x;;
let z = 
  let x = "foo"
  and y = 3.1 in
  x ^ (string_of_float y)
;;

let pi = 3.1415926535;;
let c_area(r) = r *. r *. pi;;
let pi = 1;;
let area = c_area 2.0;;