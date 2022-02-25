defmodule Operator.Common do
  @moduledoc """
  The Common context.
  """

  import Ecto.Query, warn: false
  alias Operator.Repo

  alias Operator.Common.Country

  @doc """
  Returns the list of countries.

  ## Examples

      iex> list_countries()
      [%Country{}, ...]

  """
  def list_countries do
    Repo.all(Country)
  end

  @doc """
  Gets a single country.

  Raises `Ecto.NoResultsError` if the Country does not exist.

  ## Examples

      iex> get_country!(123)
      %Country{}

      iex> get_country!(456)
      ** (Ecto.NoResultsError)

  """
  def get_country!(id), do: Repo.get!(Country, id)

  @doc """
  Creates a country.

  ## Examples

      iex> create_country(%{field: value})
      {:ok, %Country{}}

      iex> create_country(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_country(attrs \\ %{}) do
    %Country{}
    |> Country.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a country.

  ## Examples

      iex> update_country(country, %{field: new_value})
      {:ok, %Country{}}

      iex> update_country(country, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_country(%Country{} = country, attrs) do
    country
    |> Country.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a country.

  ## Examples

      iex> delete_country(country)
      {:ok, %Country{}}

      iex> delete_country(country)
      {:error, %Ecto.Changeset{}}

  """
  def delete_country(%Country{} = country) do
    Repo.delete(country)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking country changes.

  ## Examples

      iex> change_country(country)
      %Ecto.Changeset{data: %Country{}}

  """
  def change_country(%Country{} = country, attrs \\ %{}) do
    Country.changeset(country, attrs)
  end

  alias Operator.Common.Jurisdiction

  @doc """
  Returns the list of jurisdictions.

  ## Examples

      iex> list_jurisdictions()
      [%Jurisdiction{}, ...]

  """
  def list_jurisdictions do
    Repo.all(Jurisdiction)
  end

  @doc """
  Gets a single jurisdiction.

  Raises `Ecto.NoResultsError` if the Jurisdiction does not exist.

  ## Examples

      iex> get_jurisdiction!(123)
      %Jurisdiction{}

      iex> get_jurisdiction!(456)
      ** (Ecto.NoResultsError)

  """
  def get_jurisdiction!(id), do: Repo.get!(Jurisdiction, id)

  @doc """
  Creates a jurisdiction.

  ## Examples

      iex> create_jurisdiction(%{field: value})
      {:ok, %Jurisdiction{}}

      iex> create_jurisdiction(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_jurisdiction(attrs \\ %{}) do
    %Jurisdiction{}
    |> Jurisdiction.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a jurisdiction.

  ## Examples

      iex> update_jurisdiction(jurisdiction, %{field: new_value})
      {:ok, %Jurisdiction{}}

      iex> update_jurisdiction(jurisdiction, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_jurisdiction(%Jurisdiction{} = jurisdiction, attrs) do
    jurisdiction
    |> Jurisdiction.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a jurisdiction.

  ## Examples

      iex> delete_jurisdiction(jurisdiction)
      {:ok, %Jurisdiction{}}

      iex> delete_jurisdiction(jurisdiction)
      {:error, %Ecto.Changeset{}}

  """
  def delete_jurisdiction(%Jurisdiction{} = jurisdiction) do
    Repo.delete(jurisdiction)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking jurisdiction changes.

  ## Examples

      iex> change_jurisdiction(jurisdiction)
      %Ecto.Changeset{data: %Jurisdiction{}}

  """
  def change_jurisdiction(%Jurisdiction{} = jurisdiction, attrs \\ %{}) do
    Jurisdiction.changeset(jurisdiction, attrs)
  end

  alias Operator.Common.Currency

  @doc """
  Returns the list of currencies.

  ## Examples

      iex> list_currencies()
      [%Currency{}, ...]

  """
  def list_currencies do
    Repo.all(Currency)
  end

  @doc """
  Gets a single currency.

  Raises `Ecto.NoResultsError` if the Currency does not exist.

  ## Examples

      iex> get_currency!(123)
      %Currency{}

      iex> get_currency!(456)
      ** (Ecto.NoResultsError)

  """
  def get_currency!(id), do: Repo.get!(Currency, id)

  @doc """
  Creates a currency.

  ## Examples

      iex> create_currency(%{field: value})
      {:ok, %Currency{}}

      iex> create_currency(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_currency(attrs \\ %{}) do
    %Currency{}
    |> Currency.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a currency.

  ## Examples

      iex> update_currency(currency, %{field: new_value})
      {:ok, %Currency{}}

      iex> update_currency(currency, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_currency(%Currency{} = currency, attrs) do
    currency
    |> Currency.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a currency.

  ## Examples

      iex> delete_currency(currency)
      {:ok, %Currency{}}

      iex> delete_currency(currency)
      {:error, %Ecto.Changeset{}}

  """
  def delete_currency(%Currency{} = currency) do
    Repo.delete(currency)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking currency changes.

  ## Examples

      iex> change_currency(currency)
      %Ecto.Changeset{data: %Currency{}}

  """
  def change_currency(%Currency{} = currency, attrs \\ %{}) do
    Currency.changeset(currency, attrs)
  end
end
