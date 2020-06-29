export default function pow_reduce(x: number, n: number): number {
  return [...Array(n - 1)].reduce((acc, _) => acc * x, x)
}
