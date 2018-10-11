defmodule MapKeys do
  @moduledoc """
  Documentation for MapKeys
  """

  @doc """
  Converts string keys to atoms, may cause OTP crash by reaching limit of atoms
  """
  @spec to_atoms_unsafe!(map) :: map
  def to_atoms_unsafe!(map) do
    KeyTools.atomize_keys(map)
  end

  @doc """
  Converts atom keys to strings
  """
  @spec to_strings(map) :: map
  def to_strings(map) do
    KeyTools.stringify_keys(map)
  end

  @doc """
  Converts map keys to snake_case
  """
  @spec to_snake_case(map) :: map
  def to_snake_case(map) do
    ProperCase.to_snake_case(map)
  end

  @doc """
  Converts map keys to camelCase
  """
  @spec to_camel_case(map) :: map
  def to_camel_case(map) do
    ProperCase.to_camel_case(map)
  end
end
