let x = print_string "Hello, " in
  print_string "World!\n"
;;

let f x y = 2 in
  f (print_string "Hello, ") (print_string "World\n")
;;

ignore ;;

let print_hello () = print_string "Hello, "; 0 ;;

print_hello (); print_string "World" ;;

ignore (print_hello ()); print_string "World\n" ;;

while false do print_string "false" done ;;

for x = 0 to 10 do print_int x ; print_char '\n' done ;;
for x = 11 downto  0 do print_int x ; print_char '\n' done ;;

let parrot () =
  let s = ref "" in
    while (s := read_line (); !s <> "." ) do 
      print_string !s;
      print_endline !s;
    done
;;

parrot () ;;