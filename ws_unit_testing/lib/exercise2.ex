defmodule WsUnitTesting.Exercise2 do
  def remove_duplicate_value(list) do
    Enum.reduce(list, [], fn item, acc ->
      if is_exist?(item, acc) do
        acc
      else
        [item | acc]
      end
    end)
  end

  def is_exist?(x, list) do
    Enum.reduce(list, false, fn item, acc ->
      if item == x do
        true
      else
        acc
      end
    end)
  end
end
