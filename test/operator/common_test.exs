defmodule Operator.CommonTest do
  use Operator.DataCase

  alias Operator.Common

  describe "countries" do
    alias Operator.Common.Country

    import Operator.CommonFixtures

    @invalid_attrs %{name: nil}

    test "list_countries/0 returns all countries" do
      country = country_fixture()
      assert Common.list_countries() == [country]
    end

    test "get_country!/1 returns the country with given id" do
      country = country_fixture()
      assert Common.get_country!(country.id) == country
    end

    test "create_country/1 with valid data creates a country" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Country{} = country} = Common.create_country(valid_attrs)
      assert country.name == "some name"
    end

    test "create_country/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Common.create_country(@invalid_attrs)
    end

    test "update_country/2 with valid data updates the country" do
      country = country_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Country{} = country} = Common.update_country(country, update_attrs)
      assert country.name == "some updated name"
    end

    test "update_country/2 with invalid data returns error changeset" do
      country = country_fixture()
      assert {:error, %Ecto.Changeset{}} = Common.update_country(country, @invalid_attrs)
      assert country == Common.get_country!(country.id)
    end

    test "delete_country/1 deletes the country" do
      country = country_fixture()
      assert {:ok, %Country{}} = Common.delete_country(country)
      assert_raise Ecto.NoResultsError, fn -> Common.get_country!(country.id) end
    end

    test "change_country/1 returns a country changeset" do
      country = country_fixture()
      assert %Ecto.Changeset{} = Common.change_country(country)
    end
  end

  describe "jurisdictions" do
    alias Operator.Common.Jurisdiction

    import Operator.CommonFixtures

    @invalid_attrs %{name: nil}

    test "list_jurisdictions/0 returns all jurisdictions" do
      jurisdiction = jurisdiction_fixture()
      assert Common.list_jurisdictions() == [jurisdiction]
    end

    test "get_jurisdiction!/1 returns the jurisdiction with given id" do
      jurisdiction = jurisdiction_fixture()
      assert Common.get_jurisdiction!(jurisdiction.id) == jurisdiction
    end

    test "create_jurisdiction/1 with valid data creates a jurisdiction" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Jurisdiction{} = jurisdiction} = Common.create_jurisdiction(valid_attrs)
      assert jurisdiction.name == "some name"
    end

    test "create_jurisdiction/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Common.create_jurisdiction(@invalid_attrs)
    end

    test "update_jurisdiction/2 with valid data updates the jurisdiction" do
      jurisdiction = jurisdiction_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Jurisdiction{} = jurisdiction} = Common.update_jurisdiction(jurisdiction, update_attrs)
      assert jurisdiction.name == "some updated name"
    end

    test "update_jurisdiction/2 with invalid data returns error changeset" do
      jurisdiction = jurisdiction_fixture()
      assert {:error, %Ecto.Changeset{}} = Common.update_jurisdiction(jurisdiction, @invalid_attrs)
      assert jurisdiction == Common.get_jurisdiction!(jurisdiction.id)
    end

    test "delete_jurisdiction/1 deletes the jurisdiction" do
      jurisdiction = jurisdiction_fixture()
      assert {:ok, %Jurisdiction{}} = Common.delete_jurisdiction(jurisdiction)
      assert_raise Ecto.NoResultsError, fn -> Common.get_jurisdiction!(jurisdiction.id) end
    end

    test "change_jurisdiction/1 returns a jurisdiction changeset" do
      jurisdiction = jurisdiction_fixture()
      assert %Ecto.Changeset{} = Common.change_jurisdiction(jurisdiction)
    end
  end

  describe "affiliates" do
    alias Operator.Common.Affiliate

    import Operator.CommonFixtures

    @invalid_attrs %{name: nil}

    test "list_affiliates/0 returns all affiliates" do
      affiliate = affiliate_fixture()
      assert Common.list_affiliates() == [affiliate]
    end

    test "get_affiliate!/1 returns the affiliate with given id" do
      affiliate = affiliate_fixture()
      assert Common.get_affiliate!(affiliate.id) == affiliate
    end

    test "create_affiliate/1 with valid data creates a affiliate" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Affiliate{} = affiliate} = Common.create_affiliate(valid_attrs)
      assert affiliate.name == "some name"
    end

    test "create_affiliate/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Common.create_affiliate(@invalid_attrs)
    end

    test "update_affiliate/2 with valid data updates the affiliate" do
      affiliate = affiliate_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Affiliate{} = affiliate} = Common.update_affiliate(affiliate, update_attrs)
      assert affiliate.name == "some updated name"
    end

    test "update_affiliate/2 with invalid data returns error changeset" do
      affiliate = affiliate_fixture()
      assert {:error, %Ecto.Changeset{}} = Common.update_affiliate(affiliate, @invalid_attrs)
      assert affiliate == Common.get_affiliate!(affiliate.id)
    end

    test "delete_affiliate/1 deletes the affiliate" do
      affiliate = affiliate_fixture()
      assert {:ok, %Affiliate{}} = Common.delete_affiliate(affiliate)
      assert_raise Ecto.NoResultsError, fn -> Common.get_affiliate!(affiliate.id) end
    end

    test "change_affiliate/1 returns a affiliate changeset" do
      affiliate = affiliate_fixture()
      assert %Ecto.Changeset{} = Common.change_affiliate(affiliate)
    end
  end

  describe "subpartners" do
    alias Operator.Common.SubPartner

    import Operator.CommonFixtures

    @invalid_attrs %{name: nil}

    test "list_subpartners/0 returns all subpartners" do
      sub_partner = sub_partner_fixture()
      assert Common.list_subpartners() == [sub_partner]
    end

    test "get_sub_partner!/1 returns the sub_partner with given id" do
      sub_partner = sub_partner_fixture()
      assert Common.get_sub_partner!(sub_partner.id) == sub_partner
    end

    test "create_sub_partner/1 with valid data creates a sub_partner" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %SubPartner{} = sub_partner} = Common.create_sub_partner(valid_attrs)
      assert sub_partner.name == "some name"
    end

    test "create_sub_partner/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Common.create_sub_partner(@invalid_attrs)
    end

    test "update_sub_partner/2 with valid data updates the sub_partner" do
      sub_partner = sub_partner_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %SubPartner{} = sub_partner} = Common.update_sub_partner(sub_partner, update_attrs)
      assert sub_partner.name == "some updated name"
    end

    test "update_sub_partner/2 with invalid data returns error changeset" do
      sub_partner = sub_partner_fixture()
      assert {:error, %Ecto.Changeset{}} = Common.update_sub_partner(sub_partner, @invalid_attrs)
      assert sub_partner == Common.get_sub_partner!(sub_partner.id)
    end

    test "delete_sub_partner/1 deletes the sub_partner" do
      sub_partner = sub_partner_fixture()
      assert {:ok, %SubPartner{}} = Common.delete_sub_partner(sub_partner)
      assert_raise Ecto.NoResultsError, fn -> Common.get_sub_partner!(sub_partner.id) end
    end

    test "change_sub_partner/1 returns a sub_partner changeset" do
      sub_partner = sub_partner_fixture()
      assert %Ecto.Changeset{} = Common.change_sub_partner(sub_partner)
    end
  end

  describe "sexes" do
    alias Operator.Common.Sex

    import Operator.CommonFixtures

    @invalid_attrs %{name: nil}

    test "list_sexes/0 returns all sexes" do
      sex = sex_fixture()
      assert Common.list_sexes() == [sex]
    end

    test "get_sex!/1 returns the sex with given id" do
      sex = sex_fixture()
      assert Common.get_sex!(sex.id) == sex
    end

    test "create_sex/1 with valid data creates a sex" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Sex{} = sex} = Common.create_sex(valid_attrs)
      assert sex.name == "some name"
    end

    test "create_sex/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Common.create_sex(@invalid_attrs)
    end

    test "update_sex/2 with valid data updates the sex" do
      sex = sex_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Sex{} = sex} = Common.update_sex(sex, update_attrs)
      assert sex.name == "some updated name"
    end

    test "update_sex/2 with invalid data returns error changeset" do
      sex = sex_fixture()
      assert {:error, %Ecto.Changeset{}} = Common.update_sex(sex, @invalid_attrs)
      assert sex == Common.get_sex!(sex.id)
    end

    test "delete_sex/1 deletes the sex" do
      sex = sex_fixture()
      assert {:ok, %Sex{}} = Common.delete_sex(sex)
      assert_raise Ecto.NoResultsError, fn -> Common.get_sex!(sex.id) end
    end

    test "change_sex/1 returns a sex changeset" do
      sex = sex_fixture()
      assert %Ecto.Changeset{} = Common.change_sex(sex)
    end
  end

  describe "currencies" do
    alias Operator.Common.Currency

    import Operator.CommonFixtures

    @invalid_attrs %{name: nil}

    test "list_currencies/0 returns all currencies" do
      currency = currency_fixture()
      assert Common.list_currencies() == [currency]
    end

    test "get_currency!/1 returns the currency with given id" do
      currency = currency_fixture()
      assert Common.get_currency!(currency.id) == currency
    end

    test "create_currency/1 with valid data creates a currency" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Currency{} = currency} = Common.create_currency(valid_attrs)
      assert currency.name == "some name"
    end

    test "create_currency/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Common.create_currency(@invalid_attrs)
    end

    test "update_currency/2 with valid data updates the currency" do
      currency = currency_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Currency{} = currency} = Common.update_currency(currency, update_attrs)
      assert currency.name == "some updated name"
    end

    test "update_currency/2 with invalid data returns error changeset" do
      currency = currency_fixture()
      assert {:error, %Ecto.Changeset{}} = Common.update_currency(currency, @invalid_attrs)
      assert currency == Common.get_currency!(currency.id)
    end

    test "delete_currency/1 deletes the currency" do
      currency = currency_fixture()
      assert {:ok, %Currency{}} = Common.delete_currency(currency)
      assert_raise Ecto.NoResultsError, fn -> Common.get_currency!(currency.id) end
    end

    test "change_currency/1 returns a currency changeset" do
      currency = currency_fixture()
      assert %Ecto.Changeset{} = Common.change_currency(currency)
    end
  end

  describe "games" do
    alias Operator.Common.Game

    import Operator.CommonFixtures

    @invalid_attrs %{name: nil}

    test "list_games/0 returns all games" do
      game = game_fixture()
      assert Common.list_games() == [game]
    end

    test "get_game!/1 returns the game with given id" do
      game = game_fixture()
      assert Common.get_game!(game.id) == game
    end

    test "create_game/1 with valid data creates a game" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Game{} = game} = Common.create_game(valid_attrs)
      assert game.name == "some name"
    end

    test "create_game/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Common.create_game(@invalid_attrs)
    end

    test "update_game/2 with valid data updates the game" do
      game = game_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Game{} = game} = Common.update_game(game, update_attrs)
      assert game.name == "some updated name"
    end

    test "update_game/2 with invalid data returns error changeset" do
      game = game_fixture()
      assert {:error, %Ecto.Changeset{}} = Common.update_game(game, @invalid_attrs)
      assert game == Common.get_game!(game.id)
    end

    test "delete_game/1 deletes the game" do
      game = game_fixture()
      assert {:ok, %Game{}} = Common.delete_game(game)
      assert_raise Ecto.NoResultsError, fn -> Common.get_game!(game.id) end
    end

    test "change_game/1 returns a game changeset" do
      game = game_fixture()
      assert %Ecto.Changeset{} = Common.change_game(game)
    end
  end
end
