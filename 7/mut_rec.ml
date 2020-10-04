type teacher = { name: string; mutable office: string };;

let t = { name = "Igarashi"; office = "140" };;

t.office <- "142";;
t;;