defmodule WsUnitTesting.Exercise3Test do
  use ExUnit.Case
  import Mock
  doctest WsUnitTesting

  # Test case name
  test "Should getting list provinces success" do
    # Given
    expected_output = 63

    # When
    {:ok, output} = WsUnitTesting.Exercise3.get_provinces()

    # Then
    assert length(output) == expected_output
  end

  # Test case name
  test "Should getting list provinces success using mock" do
    # Given
    expected_output = 63

    # When
    with_mock WsUnitTesting.Exercise3, get_provinces: fn -> {:ok, Enum.to_list(1..63)} end do
      {:ok, result} = WsUnitTesting.Exercise3.get_provinces()
      output = length(result)

      # Then
      assert output == expected_output
    end
  end

  # Test case name
  test "Should getting list provinces with error case" do
    # Given
    expected_output = {:error, :timeout}

    # When
    with_mock WsUnitTesting.Exercise3, get_provinces: fn -> {:error, :timeout} end do
      output = WsUnitTesting.Exercise3.get_provinces()

      # Then
      assert output == expected_output
    end
  end

  # Test case name
  test "Should find an exist record" do
    # Given
    expected_output = %{"name" => "Hồ Chí Minh"}

    # When
    {:ok, output} = WsUnitTesting.Exercise3.find_province_by_name("Hồ Chí Minh")

    # Then
    assert output == expected_output
  end
end
