let rec even n = (* works for positive intergers *)
  if n = 0 then true else odd(n-1)
and odd n =
  if n = 0 then false else even(n-1)
;;

let rec pow'(x, n) = (* x ^ n *)
  if n = 1 then x else x * pow(x, n-1)
;;

let rec pow(x, n) = (* x ^ n *)
  if n = 0 then 1
  else if n = 1 then x 
  else pow(x * x, n / 2) * if even n then 1 else x
;;

let rec powi(x, n, res) = 
  if n = 0 then res else powi(x, n-1, x * res)
;;