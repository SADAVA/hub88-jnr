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
end
