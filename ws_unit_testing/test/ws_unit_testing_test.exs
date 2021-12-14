defmodule WsUnitTestingTest do
  use ExUnit.Case
  doctest WsUnitTesting

  test "greets the world" do
    assert WsUnitTesting.hello() == :world
  end
end
