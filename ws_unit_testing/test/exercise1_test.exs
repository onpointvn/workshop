defmodule WsUnitTesting.Exercise1Test do
  use ExUnit.Case
  doctest WsUnitTesting

  # Test case name
  test "Should getting the right ws name" do
    # Given
    expected_result = "Unit Testing workshop"
    # When
    result = WsUnitTesting.Exercise1.get_workshop_name()
    # Then
    assert result == expected_result
  end
end
