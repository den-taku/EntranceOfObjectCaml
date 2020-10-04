type teacher = { name: string; mutable office: string };;

let t = { name = "Igarashi"; office = "140" };;

t.office <- "142";;
t;;

let a = [|1; 2; 3; 4; 5; 6|];;
a.(0);;
a.(4) <- 90;;
a;;