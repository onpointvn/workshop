defmodule WsUnitTesting.Exercise2Test do
  use ExUnit.Case
  doctest WsUnitTesting

  # Test case name
  test "Should remove duplicate value" do
    # Given
    input = [1, 2, 1, 1, 1, 1, 3, 3, 3, 3, 3]
    expected_output = [1, 2, 3]

    # When
    output = WsUnitTesting.Exercise2.remove_duplicate_value(input)

    # Then
    assert output == expected_output
  end

  # Test case name
  test "Should remove duplicate value with check exactly type" do
    # Given
    input = [1, 2, 1, 1, 1, 1, 3, 3, 3, 3, 3, 2.0]
    expected_output = [1, 2, 3, 2.0]

    # When
    output = WsUnitTesting.Exercise2.remove_duplicate_value(input)

    # Then
    assert output == expected_output
  end
end
