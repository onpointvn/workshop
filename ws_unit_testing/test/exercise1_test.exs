defmodule WsUnitTesting.Exercise1Test do
  use ExUnit.Case
  doctest WsUnitTesting

  # Test case name
  test "Should getting the right ws name" do
    # Given
    expected_output = "Unit Testing workshop"

    # When
    output = WsUnitTesting.Exercise1.get_workshop_name()

    # Then
    assert output == expected_output
  end
end
