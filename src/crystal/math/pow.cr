def pow(x : Int32, n : Int32)
  # initial condition
  if n == 1
    return x
  end

  # even number
  if (n % 2) == 0
    return pow(x * x, (n / 2).to_i32)
  end

  # odd number
  return x * pow(x * x, ((n - 1) / 2).to_i32)
end

