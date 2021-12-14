defmodule WsUnitTesting.Exercise1Test do
  use ExUnit.Case
  doctest WsUnitTesting

  test "Should getting the right ws name" do
    assert WsUnitTesting.Exercise1.get_workshop_name() == "Unit Testing workshop"
  end
end
