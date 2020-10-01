let fstint ((x, t) : int * int) = x;;

let fst_ifs ((x, y) : (int * float) * string) = x;;

let fst ((x, y) : 'a * 'b) = x;;

let id x = x;;

let apply f x = f x;;