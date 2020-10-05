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

(* let cp file1 file2 = 
  let in1 = open_in file1 in
  let out2 = open_out file2 in
  while (try (match (output_string out2 (input_line in1)) 
         with () -> true ) with End_of_file -> false )
  do () done in
  close_in in1 in close_out out2
;; *)
