#[
  @see casting
    - https://forum.nim-lang.org/t/1842
    - https://github.com/nim-lang/Nim/issues/936
]#
proc pow*(x: int, n: int): int =
  # initial condition
  if n == 1:
    return x

  # even number
  if n mod 2 == 0:
    return pow(x * x, (n / 2).int)

  # odd number
  return x * pow(x * x, ((n - 1) / 2).int)
