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

  alias Operator.Common.Affiliate

  @doc """
  Returns the list of affiliates.

  ## Examples

      iex> list_affiliates()
      [%Affiliate{}, ...]

  """
  def list_affiliates do
    Repo.all(Affiliate)
  end

  @doc """
  Gets a single affiliate.

  Raises `Ecto.NoResultsError` if the Affiliate does not exist.

  ## Examples

      iex> get_affiliate!(123)
      %Affiliate{}

      iex> get_affiliate!(456)
      ** (Ecto.NoResultsError)

  """
  def get_affiliate!(id), do: Repo.get!(Affiliate, id)

  @doc """
  Creates a affiliate.

  ## Examples

      iex> create_affiliate(%{field: value})
      {:ok, %Affiliate{}}

      iex> create_affiliate(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_affiliate(attrs \\ %{}) do
    %Affiliate{}
    |> Affiliate.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a affiliate.

  ## Examples

      iex> update_affiliate(affiliate, %{field: new_value})
      {:ok, %Affiliate{}}

      iex> update_affiliate(affiliate, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_affiliate(%Affiliate{} = affiliate, attrs) do
    affiliate
    |> Affiliate.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a affiliate.

  ## Examples

      iex> delete_affiliate(affiliate)
      {:ok, %Affiliate{}}

      iex> delete_affiliate(affiliate)
      {:error, %Ecto.Changeset{}}

  """
  def delete_affiliate(%Affiliate{} = affiliate) do
    Repo.delete(affiliate)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking affiliate changes.

  ## Examples

      iex> change_affiliate(affiliate)
      %Ecto.Changeset{data: %Affiliate{}}

  """
  def change_affiliate(%Affiliate{} = affiliate, attrs \\ %{}) do
    Affiliate.changeset(affiliate, attrs)
  end

  alias Operator.Common.SubPartner

  @doc """
  Returns the list of subpartners.

  ## Examples

      iex> list_subpartners()
      [%SubPartner{}, ...]

  """
  def list_subpartners do
    Repo.all(SubPartner)
  end

  @doc """
  Gets a single sub_partner.

  Raises `Ecto.NoResultsError` if the Sub partner does not exist.

  ## Examples

      iex> get_sub_partner!(123)
      %SubPartner{}

      iex> get_sub_partner!(456)
      ** (Ecto.NoResultsError)

  """
  def get_sub_partner!(id), do: Repo.get!(SubPartner, id)

  @doc """
  Creates a sub_partner.

  ## Examples

      iex> create_sub_partner(%{field: value})
      {:ok, %SubPartner{}}

      iex> create_sub_partner(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_sub_partner(attrs \\ %{}) do
    %SubPartner{}
    |> SubPartner.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a sub_partner.

  ## Examples

      iex> update_sub_partner(sub_partner, %{field: new_value})
      {:ok, %SubPartner{}}

      iex> update_sub_partner(sub_partner, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_sub_partner(%SubPartner{} = sub_partner, attrs) do
    sub_partner
    |> SubPartner.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a sub_partner.

  ## Examples

      iex> delete_sub_partner(sub_partner)
      {:ok, %SubPartner{}}

      iex> delete_sub_partner(sub_partner)
      {:error, %Ecto.Changeset{}}

  """
  def delete_sub_partner(%SubPartner{} = sub_partner) do
    Repo.delete(sub_partner)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking sub_partner changes.

  ## Examples

      iex> change_sub_partner(sub_partner)
      %Ecto.Changeset{data: %SubPartner{}}

  """
  def change_sub_partner(%SubPartner{} = sub_partner, attrs \\ %{}) do
    SubPartner.changeset(sub_partner, attrs)
  end

  alias Operator.Common.Sex

  @doc """
  Returns the list of sexes.

  ## Examples

      iex> list_sexes()
      [%Sex{}, ...]

  """
  def list_sexes do
    Repo.all(Sex)
  end

  @doc """
  Gets a single sex.

  Raises `Ecto.NoResultsError` if the Sex does not exist.

  ## Examples

      iex> get_sex!(123)
      %Sex{}

      iex> get_sex!(456)
      ** (Ecto.NoResultsError)

  """
  def get_sex!(id), do: Repo.get!(Sex, id)

  @doc """
  Creates a sex.

  ## Examples

      iex> create_sex(%{field: value})
      {:ok, %Sex{}}

      iex> create_sex(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_sex(attrs \\ %{}) do
    %Sex{}
    |> Sex.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a sex.

  ## Examples

      iex> update_sex(sex, %{field: new_value})
      {:ok, %Sex{}}

      iex> update_sex(sex, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_sex(%Sex{} = sex, attrs) do
    sex
    |> Sex.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a sex.

  ## Examples

      iex> delete_sex(sex)
      {:ok, %Sex{}}

      iex> delete_sex(sex)
      {:error, %Ecto.Changeset{}}

  """
  def delete_sex(%Sex{} = sex) do
    Repo.delete(sex)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking sex changes.

  ## Examples

      iex> change_sex(sex)
      %Ecto.Changeset{data: %Sex{}}

  """
  def change_sex(%Sex{} = sex, attrs \\ %{}) do
    Sex.changeset(sex, attrs)
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

  alias Operator.Common.Game

  @doc """
  Returns the list of games.

  ## Examples

      iex> list_games()
      [%Game{}, ...]

  """
  def list_games do
    Repo.all(Game)
  end

  @doc """
  Gets a single game.

  Raises `Ecto.NoResultsError` if the Game does not exist.

  ## Examples

      iex> get_game!(123)
      %Game{}

      iex> get_game!(456)
      ** (Ecto.NoResultsError)

  """
  def get_game!(id), do: Repo.get!(Game, id)

  @doc """
  Creates a game.

  ## Examples

      iex> create_game(%{field: value})
      {:ok, %Game{}}

      iex> create_game(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_game(attrs \\ %{}) do
    %Game{}
    |> Game.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a game.

  ## Examples

      iex> update_game(game, %{field: new_value})
      {:ok, %Game{}}

      iex> update_game(game, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_game(%Game{} = game, attrs) do
    game
    |> Game.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a game.

  ## Examples

      iex> delete_game(game)
      {:ok, %Game{}}

      iex> delete_game(game)
      {:error, %Ecto.Changeset{}}

  """
  def delete_game(%Game{} = game) do
    Repo.delete(game)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking game changes.

  ## Examples

      iex> change_game(game)
      %Ecto.Changeset{data: %Game{}}

  """
  def change_game(%Game{} = game, attrs \\ %{}) do
    Game.changeset(game, attrs)
  end
end
