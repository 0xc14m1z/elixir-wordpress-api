defmodule WordpressAPI.Options do
  import WordpressAPI.Client

  def getOptions(wordpress, params \\ %{}) do
    defaults = %{options: []}
    call(wordpress, "wp.getOptions", Map.merge(defaults, params))
  end
end
