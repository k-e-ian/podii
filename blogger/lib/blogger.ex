defmodule Blogger do
  use HTTPoison.Base

  @url "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"

  def fetch_blog do
    HTTPoison.get(@url)
  end

  @moduledoc """
  Documentation for `Blogger`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Blogger.hello()
      :world

  """
  def hello do
    :world
  end
  
  def uppercase_list(list) do
    Enum.map(list, &String.upcase/1)
  end
end

