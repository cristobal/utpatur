pow :: Int -> Int -> Int
pow x n
  -- initial condition
  | n == 1 = x

  -- even number
  | (n `rem` 2) == 0 = pow (x * x) (n `div` 2)

  -- odd number
  | otherwise = x * pow (x * x) ((n - 1) `div` 2)
