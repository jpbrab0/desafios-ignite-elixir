defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/2" do
    test "Returns length of list" do
      list = [1,2,3,4,5,6,7]

      expected_response = 7
      
      assert ListLength.call(list) == expected_response
    end
  end
end
