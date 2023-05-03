defmodule BloggerTest do
  use ExUnit.Case
  doctest Blogger

  test "greets the world" do
    assert Blogger.hello() == :world
  end

  test "fetches blog successfully" do
    {:ok, response} = Blogger.fetch_blog()
    assert response.status_code == 200
    assert response.request_url == "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"
  end

  test "returns a list of uppercase strings" do
    input = ["cow", "goat", "sheep"]
    expected_output = ["COW", "GOAT", "SHEEP"]

    assert Blogger.uppercase_list(input) == expected_output
  end
end
