defmodule PhoenixCsvUpload.Importer do
  def preview(rows) do
    rows
    |> Enum.take(5)
    |> transform_keys()
    |> Enum.map(fn attrs ->
    #   Customers.change_customer(%Customer{}, attrs)
    #   |> Ecto.Changeset.apply_changes()
    end)
  end

  def import(rows) do
    rows
    |> transform_keys()
    |> Enum.map(fn attrs ->
    #   Customers.create_customer(attrs)
    end)
  end

  # "First Name" => "first_name"
  defp transform_keys(rows) do
    rows
    |> Enum.map(fn row ->
      Enum.reduce(row, %{}, fn {key, val}, map ->
        Map.put(map, underscore_key(key), val)
      end)
    end)
  end

  defp underscore_key(key) do
    key
    |> String.replace(" ", "")
    |> Phoenix.Naming.underscore()
  end
end
