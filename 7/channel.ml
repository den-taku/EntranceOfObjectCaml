print_string "hoge" ; print_newline () ; print_string "huga" ;;

(* let input = read_line () ;;
let input_int = read_int () ;;
let input_char = read_float () ;; *)

(stdin, stdout, stderr);;

let file_out = open_out "channel_practice.csv" ;;
output_string file_out "1, \n" ;;
output_string file_out "2, \n" ;;
output_string file_out "3, \n" ;;
output_string file_out "5, \n" ;;
output_string file_out "6, \n" ;;
output_string file_out "7, \n" ;;
output_string file_out "8, \n" ;;
output_string file_out "9, \n" ;;
output_string file_out "0, \n" ;;
close_out file_out ;;