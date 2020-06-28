let rec pow (x:int, n:int): int =
  match n with
  // initial condition
  | 1 -> x
  // even number
  | _ when n % 2 = 0 -> pow(x * x, n /2)
  // odd number
  | _ -> x * pow(x * x, (n - 1) / 2)
