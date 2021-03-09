defmodule ListFilterTest do
  use ExUnit.Case
  
  describe "call/1" do
    test "Returns the total of odd numbers" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      
      expected_result = 3

      assert ListFilter.call(list) == expected_result
    end
  end
end
