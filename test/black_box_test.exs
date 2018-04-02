defmodule BlackBoxTest do
  use ExUnit.Case
  doctest BlackBox

  test "greets the world" do
    assert BlackBox.hello() == :world
  end
end
