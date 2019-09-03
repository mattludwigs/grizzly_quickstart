defmodule GrizzlyQuickStartTest do
  use ExUnit.Case
  doctest GrizzlyQuickStart

  test "greets the world" do
    assert GrizzlyQuickStart.hello() == :world
  end
end
