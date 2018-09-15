defmodule MapKeys do
  @moduledoc """
  Documentation for MapKeys.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MapKeys.hello()
      :world

  """
  def to_atoms_unsafe!(map) do
    KeyTools.atomize_keys(map)
  end

  def to_strings(map) do
    KeyTools.stringify_keys(map)
  end

  def to_snake_case(map) do
    ProperCase.to_snake_case(map)
  end

  def to_camel_case(map) do
    ProperCase.to_camel_case(map)
  end
end
