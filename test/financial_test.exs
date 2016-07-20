defmodule FinancialTest do
  use ExUnit.Case, async: true
  doctest Financial

  test "simple interest at 10%" do
    assert Financial.amount(1, 10)
           |> Float.round(2) === 1.1
  end

  test "simple interest at 20%" do
    assert Financial.amount(1, 20)
           |> Float.round(2) === 1.2
  end

  test "20% over two periods" do
    assert Financial.amount(1, 10, 2) == 1.22
  end
end
