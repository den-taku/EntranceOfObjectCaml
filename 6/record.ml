type student = {name: string; id: int} ;;

let st1 = { name = "Taro Yamada"; id = 123456 } ;;

let string_of_student {name = n; id = i} =
  n ^ "'s ID is " ^ string_of_int i 
;;

string_of_student st1;;

let string_of_student st = 
  st.name ^ "'s ID is " ^ string_of_int st.id 
;;

string_of_student st1 ;;

type teacher = { tname: string; room: string; ext: int } ;;

let t1 = { tname = "Atsushi Igarashi"; room = "140"; ext = 4953 } ;;
let t2 = { t1 with room = "142" } ;;

type student_teacher = { s: student; t: teacher } ;;

let st = { s = { name = "Taro Yamada"; id = 123456;}; t = t1 } ;;