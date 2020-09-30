(* 4.1 *)
let integral (f, a, b) =
  let d = 0.1e-10 in
  let i = (b -. a) /. d in
  let rec sigma (f', i') = 
    if i' = 0. then 0.
    else (f'(a +. (i' -. 1.) *. d) +. f(a +. i' *. d)) *. d /. 2. 
      +. sigma(f', i' -. 1.) in
  sigma(f, i)
;;