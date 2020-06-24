package math

// Pow of x n
func Pow(x int, n int) int {
	// initial condition
	if n == 1 {
		return x
	}

	// even number
	if n%2 == 0 {
		return Pow(x*x, n/2)
	}

	// odd number
	return x * Pow(x*x, (n-1)/2)
}
