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
  Generate a unique affiliate name.
  """
  def unique_affiliate_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a affiliate.
  """
  def affiliate_fixture(attrs \\ %{}) do
    {:ok, affiliate} =
      attrs
      |> Enum.into(%{
        name: unique_affiliate_name()
      })
      |> Operator.Common.create_affiliate()

    affiliate
  end

  @doc """
  Generate a unique sub_partner name.
  """
  def unique_sub_partner_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a sub_partner.
  """
  def sub_partner_fixture(attrs \\ %{}) do
    {:ok, sub_partner} =
      attrs
      |> Enum.into(%{
        name: unique_sub_partner_name()
      })
      |> Operator.Common.create_sub_partner()

    sub_partner
  end

  @doc """
  Generate a unique sex name.
  """
  def unique_sex_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a sex.
  """
  def sex_fixture(attrs \\ %{}) do
    {:ok, sex} =
      attrs
      |> Enum.into(%{
        name: unique_sex_name()
      })
      |> Operator.Common.create_sex()

    sex
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

  @doc """
  Generate a unique game name.
  """
  def unique_game_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a game.
  """
  def game_fixture(attrs \\ %{}) do
    {:ok, game} =
      attrs
      |> Enum.into(%{
        name: unique_game_name()
      })
      |> Operator.Common.create_game()

    game
  end
end
