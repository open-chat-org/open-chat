defmodule MailServiceTest do
  use ExUnit.Case
  doctest MailService

  test "greets the world" do
    assert MailService.hello() == :world
  end
end
