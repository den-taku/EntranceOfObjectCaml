type 'a tree = Lf | Br of 'a * 'a tree * 'a tree ;;

let chartree = Br ('a', Br ('b', Br ('d', Lf, Lf), Lf),
                        Br ('c', Br ('e', Lf, Lf), Br ('f', Lf, Lf)))
;;

let rec size = function
    Lf -> 0
  | Br (_, left, right) -> 1 + size left + size right
;;

let rec depth = function
    Lf -> 0
  | Br (_, left, right) -> 1 + max (depth left) (depth right)
;;

let comptree = Br(1, Br(2, Br(4, Lf, Lf),
                           Br(5, Lf, Lf)),
                     Br(3, Br(6, Lf, Lf),
                           Br(7, Lf, Lf)))
;;

let rec preorder = function
    Lf -> []
  | Br (x, left, right) -> x :: (preorder left) @ (preorder right)
;;

let rec inorder = function
    Lf -> []
  | Br (x, left, right) -> (inorder left) @ (x :: inorder right)
;;

let rec postorder = function
    Lf -> []
  | Br (x, left, right) -> (postorder left) @ (postorder right) @ [x]
;;

let rec preord t l =
  match t with
      Lf -> l
    | Br(x, left, right) -> x :: (preord left (preord right l))
;;