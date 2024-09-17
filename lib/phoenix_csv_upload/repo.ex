defmodule PhoenixCsvUpload.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_csv_upload,
    adapter: Ecto.Adapters.Postgres
end
