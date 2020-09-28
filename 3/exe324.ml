let geo_mean (a, b) = sqrt(a *. b);;

let prodMatVec((a, b, c, d), (x, y)) = 
  (a *. x +. b *. y, c *. x +. d *. y);;