let deriv f =
  let dx = 0.1e-10 in
    fun x -> (f(x +. dx) -. f(x)) /. dx
;;

deriv (fun x -> x *. x *. x) 3.0 ;;

let fixpoint f init = 
  (* computes a fixed-point of f, i.e., r such that f(r)=r *)
  let threshold = 0.1e-10 in
  let rec loop x =
    let next = f x in
    if abs_float (x -. next) < threshold then x
    else loop next
  in loop init
;;

let newton_transform f = fun x -> x -. f(x) /. (deriv f x) ;;

let newton_method f guess = fixpoint (newton_transform f) guess ;;

let square_root x = newton_method (fun y -> y *. y -. x) 1.0;;

square_root 5.0 ;;