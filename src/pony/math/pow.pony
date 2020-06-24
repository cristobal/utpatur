primitive Math
  fun pow (x:I32, n:I32): I32 =>
    if n == 1 then
      return x
    end

    if (n % 2) == 0 then
      return pow(x*x, n/2)
    end

    x * pow(x*x, (n-1)/2)
