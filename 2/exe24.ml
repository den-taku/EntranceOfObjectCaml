let alt_and(b1, b2) = 
  if b1 then 
    if b2 then true
    else false
  else false
;;

let alt_or(b1, b2) =
  if b1 then true
  else if b2 then true
  else false
;;