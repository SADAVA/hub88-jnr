defmodule Operator.CommonFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Operator.Common` context.
  """

  @doc """
  Generate a unique country name.
  """
  def unique_country_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a country.
  """
  def country_fixture(attrs \\ %{}) do
    {:ok, country} =
      attrs
      |> Enum.into(%{
        name: unique_country_name()
      })
      |> Operator.Common.create_country()

    country
  end

  @doc """
  Generate a unique jurisdiction name.
  """
  def unique_jurisdiction_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a jurisdiction.
  """
  def jurisdiction_fixture(attrs \\ %{}) do
    {:ok, jurisdiction} =
      attrs
      |> Enum.into(%{
        name: unique_jurisdiction_name()
      })
      |> Operator.Common.create_jurisdiction()

    jurisdiction
  end

  @doc """
  Generate a unique currency name.
  """
  def unique_currency_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a currency.
  """
  def currency_fixture(attrs \\ %{}) do
    {:ok, currency} =
      attrs
      |> Enum.into(%{
        name: unique_currency_name()
      })
      |> Operator.Common.create_currency()

    currency
  end
end
