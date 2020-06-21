# Float to int
# http://elixir-recipes.github.io/floats/convert-float-to-int/
#
# Return stmt
# https://elixirforum.com/t/how-to-use-return-statement-with-if-condition-in-elixir/4935/4
#
defmodule Pow do
  @spec pow(integer(), integer()) :: integer()
  def pow(x, n) do
    result =
      cond do
        # initial condition
        n == 1 -> x

        # even number
        rem(n, 2) == 0 -> pow(
          x * x,
          Kernel.trunc(n / 2)
        )

        # odd number
        true -> x * pow(
          x * x,
          Kernel.trunc((n - 1) / 2)
        )
      end
      result
  end
end
