defmodule Runtime do
  @process_namer Compiletime.fetch_app_env!(
    :runtime,
    :process_namer,
    dev: Runtime.ProcessNamer,
    test: Runtime.TestProcessNamer,
    prod: Runtime.ProcessNamer
  )

  def name_process(module) do
    @process_namer.name(module)
  end
end
