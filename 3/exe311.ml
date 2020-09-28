let x = 1 in let x = 3 in let x = x + 2 in x * x;;

let x = 2 and y = 3 in (let y = x and x = y + 2 in x * y) + y;;

let x = 2 in let y = 3 in let y = x in let z = y + 2 in x * y * z;;