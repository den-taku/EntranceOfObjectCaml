let rec sqsum n =
  if n = 0 then 0 else n * n + sqsum(n-1)
let rec cbsum n =
  if n = 0 then 0 else n * n * n + cbsum(n-1)
;;

let rec sigma (f, n) =
  if n = 0 then 0 else f n + sigma (f, n-1)
;;

let square x = x * x
let sqsum n = sigma (square, n)

let cbsum n =
  let cube x = x * x * x in sigma (cube, n)
;;

let cbsum n = sigma ((fun x -> x * x * x), n);;

let sq5 = ((fun x -> x * x), 5) in
  sigma sq5;;

(fun x -> x * x) 7;;