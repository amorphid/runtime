defmodule Runtime.ProcessNamer do
  def name(module) when is_atom(module) do
    module
  end

  def name(invalid) do
    raise "Invalid => #{inspect(invalid)}"
  end
end
