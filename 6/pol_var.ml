type 'a list = Nil | Cons of 'a * 'a list ;;

type 'a option = None | Some of 'a ;;

type 'a pol_val =
    None
  | One of 'a
  | Two of 'a * 'a
  | Three of 'a * 'a * 'a
;;