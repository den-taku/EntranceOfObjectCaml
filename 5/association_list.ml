let city_phone = [("Kyoto", "075"); ("Osaka", "06"); ("Tokyo", "03")];;

let rec assoc a = function
  (a', b) :: rest -> if a = a' then b else assoc a rest
;;