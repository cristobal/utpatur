pub fn pow (x: i32, n:i32) -> i32 {
  // initial condition
  if n == 1 {
    return x
  }

  // even number
  if (n % 2) == 0 {
    return pow(x * x, n / 2)
  }

  // odd number
  return x * pow(x * x, (n -1) / 2)
}
