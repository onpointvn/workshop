defmodule WsUnitTesting.Exercise3 do
  def get_provinces() do
    WsUnitTesting.OpolloAPI.get_provinces()
  end

  def find_province_by_name(name) do
    get_provinces() |> Enum.find(fn x -> x["name"] == name end)
  end
end
