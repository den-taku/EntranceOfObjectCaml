let rec fact n = 
  if n = 1 then 1 else fact (n-1) * n 
;;

let square x = x * x;;
square(square(2));; (*call-by-value*)

let rec facti (n, res) = 
  if n = 1 then res 
  else facti (n-1, n * res)
;;

let fact n = 
  let rec facti (n, res) = 
    if n = 1 then res else  facti(n - 1, res * n)
  in facti(n, 1)
;;