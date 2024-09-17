defmodule PhoenixCsvUpload.CustomersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixCsvUpload.Customers` context.
  """

  @doc """
  Generate a customer.
  """
  def customer_fixture(attrs \\ %{}) do
    {:ok, customer} =
      attrs
      |> Enum.into(%{
        email: "some email",
        name: "some name",
        phone_number: "some phone_number"
      })
      |> PhoenixCsvUpload.Customers.create_customer()

    customer
  end
end
