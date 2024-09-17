defmodule PhoenixCsvUploadWeb.CsvLive.Index do
  use PhoenixCsvUploadWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
