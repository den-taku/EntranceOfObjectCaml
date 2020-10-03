type nat = Zero | OneMoreThan of nat;;

let zero = Zero and two = OneMoreThan (OneMoreThan Zero);;

let rec add m n = 
  match m with Zero -> n | OneMoreThan m' -> OneMoreThan (add m' n) 
;;

add two two ;;

type intlist = INil | ICons of int * intlist ;;

type fl_str_list = FNil | FCons of float * str_fl_list
  and str_fl_list = SNil | SCons of string * fl_str_list
;;

let fslist = FCons (3.14, SCons ("foo", FCons (2.7, SNil))) ;;

let rec length_fs = function
    FNil -> 0
  | FCons (_, rest_sf) -> 1 + length_sf rest_sf
and length_sf = function
    SNil -> 0
  | SCons (_, rest_fs) -> 1 + length_fs rest_fs
;;

length_fs fslist ;;