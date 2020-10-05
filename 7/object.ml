type pointI = { get: unit -> int; set: int -> unit; inc: unit -> unit } ;;

let p = 
  let x = ref 0 in
  let rec this () =
    { get = (fun () -> !x);
      set = (fun newx -> x := newx);
      inc = (fun () -> (this ()).set ((this ()).get () + 1))} in
    this ()
;;

p.get();;
p.inc();;
p.get();;