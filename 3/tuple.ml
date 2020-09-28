(1., 2.);;
let bigtuple = (1, true, "Objective Caml", 4.);;
let igarashi = ("Atsushi", "Igarashi", 10, 142);;
let (i, b, s, f) = bigtuple;;
let (i, _, s, _) = igarashi;;

let average (x, y) = (x +. y) /. 2.0;;

let pair = (0.34, 1.2);;
average pair;;

let average pair =
  let (x, y) = pair in (x +. y) /. 2.0
;;

let add_vec ((x1, y1), (x2, y2)) = 
  (x1 +. x2, y1 +. y2)
;;

let (x, y) = add_vec(pair, (-2.0, 1.0));;