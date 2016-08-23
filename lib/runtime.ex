defmodule Runtime do
  @process_namer Application.fetch_env!(:runtime, :process_namer)

  def name_process(module) do
    @process_namer.name(module)
  end
end
