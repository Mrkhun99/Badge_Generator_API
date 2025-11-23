defmodule BadgeApiTest do
  use ExUnit.Case
  doctest BadgeApi

  test "greets the world" do
    assert BadgeApi.hello() == :world
  end
end
