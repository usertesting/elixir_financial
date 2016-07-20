defmodule Financial do

  @doc ~S"""
  Gives amount for principal and interest.

  ## Examples

      iex> Financial.amount(1, 20)
      1.2

  """

  def amount(principal, percentage) do
    principal * (1 + percentage_to_decimal(percentage))
  end

  @doc ~S"""
  Gives amount for principal, interest, intervals, period.

  ## Examples

      iex> Financial.amount(1, 20, 2)
      1.49

  """

  def amount(principal, percentage, months \\ 12, years) do
    amount(principal, percentage / months)
    |> :math.pow(months * years)
    |> Float.round(2)
  end


  defp percentage_to_decimal(percentage) do
    percentage / 100
  end
end
