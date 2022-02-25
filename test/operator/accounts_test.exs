defmodule Operator.AccountsTest do
  use Operator.DataCase

  alias Operator.Accounts

  describe "users" do
    alias Operator.Accounts.User

    import Operator.AccountsFixtures

    @invalid_attrs %{affiliate_id: nil, birth_date: nil, name: nil, registration_date: nil, sex: nil, sub_partner_id: nil, tags: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Accounts.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{affiliate_id: "some affiliate_id", birth_date: ~N[2022-02-24 23:34:00], name: "some name", registration_date: ~N[2022-02-24 23:34:00], sex: "some sex", sub_partner_id: "some sub_partner_id", tags: []}

      assert {:ok, %User{} = user} = Accounts.create_user(valid_attrs)
      assert user.affiliate_id == "some affiliate_id"
      assert user.birth_date == ~N[2022-02-24 23:34:00]
      assert user.name == "some name"
      assert user.registration_date == ~N[2022-02-24 23:34:00]
      assert user.sex == "some sex"
      assert user.sub_partner_id == "some sub_partner_id"
      assert user.tags == []
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{affiliate_id: "some updated affiliate_id", birth_date: ~N[2022-02-25 23:34:00], name: "some updated name", registration_date: ~N[2022-02-25 23:34:00], sex: "some updated sex", sub_partner_id: "some updated sub_partner_id", tags: []}

      assert {:ok, %User{} = user} = Accounts.update_user(user, update_attrs)
      assert user.affiliate_id == "some updated affiliate_id"
      assert user.birth_date == ~N[2022-02-25 23:34:00]
      assert user.name == "some updated name"
      assert user.registration_date == ~N[2022-02-25 23:34:00]
      assert user.sex == "some updated sex"
      assert user.sub_partner_id == "some updated sub_partner_id"
      assert user.tags == []
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end
end
