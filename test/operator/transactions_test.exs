defmodule Operator.TransactionsTest do
  use Operator.DataCase

  alias Operator.Transactions

  describe "wallets" do
    alias Operator.Transactions.Wallet

    import Operator.TransactionsFixtures

    @invalid_attrs %{balance: nil, name: nil}

    test "list_wallets/0 returns all wallets" do
      wallet = wallet_fixture()
      assert Transactions.list_wallets() == [wallet]
    end

    test "get_wallet!/1 returns the wallet with given id" do
      wallet = wallet_fixture()
      assert Transactions.get_wallet!(wallet.id) == wallet
    end

    test "create_wallet/1 with valid data creates a wallet" do
      valid_attrs = %{balance: 42, name: "some name"}

      assert {:ok, %Wallet{} = wallet} = Transactions.create_wallet(valid_attrs)
      assert wallet.balance == 42
      assert wallet.name == "some name"
    end

    test "create_wallet/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Transactions.create_wallet(@invalid_attrs)
    end

    test "update_wallet/2 with valid data updates the wallet" do
      wallet = wallet_fixture()
      update_attrs = %{balance: 43, name: "some updated name"}

      assert {:ok, %Wallet{} = wallet} = Transactions.update_wallet(wallet, update_attrs)
      assert wallet.balance == 43
      assert wallet.name == "some updated name"
    end

    test "update_wallet/2 with invalid data returns error changeset" do
      wallet = wallet_fixture()
      assert {:error, %Ecto.Changeset{}} = Transactions.update_wallet(wallet, @invalid_attrs)
      assert wallet == Transactions.get_wallet!(wallet.id)
    end

    test "delete_wallet/1 deletes the wallet" do
      wallet = wallet_fixture()
      assert {:ok, %Wallet{}} = Transactions.delete_wallet(wallet)
      assert_raise Ecto.NoResultsError, fn -> Transactions.get_wallet!(wallet.id) end
    end

    test "change_wallet/1 returns a wallet changeset" do
      wallet = wallet_fixture()
      assert %Ecto.Changeset{} = Transactions.change_wallet(wallet)
    end
  end

  describe "bets" do
    alias Operator.Transactions.Bet

    import Operator.TransactionsFixtures

    @invalid_attrs %{amount: nil, transaction_uuid: nil}

    test "list_bets/0 returns all bets" do
      bet = bet_fixture()
      assert Transactions.list_bets() == [bet]
    end

    test "get_bet!/1 returns the bet with given id" do
      bet = bet_fixture()
      assert Transactions.get_bet!(bet.id) == bet
    end

    test "create_bet/1 with valid data creates a bet" do
      valid_attrs = %{amount: 42, transaction_uuid: "some transaction_uuid"}

      assert {:ok, %Bet{} = bet} = Transactions.create_bet(valid_attrs)
      assert bet.amount == 42
      assert bet.transaction_uuid == "some transaction_uuid"
    end

    test "create_bet/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Transactions.create_bet(@invalid_attrs)
    end

    test "update_bet/2 with valid data updates the bet" do
      bet = bet_fixture()
      update_attrs = %{amount: 43, transaction_uuid: "some updated transaction_uuid"}

      assert {:ok, %Bet{} = bet} = Transactions.update_bet(bet, update_attrs)
      assert bet.amount == 43
      assert bet.transaction_uuid == "some updated transaction_uuid"
    end

    test "update_bet/2 with invalid data returns error changeset" do
      bet = bet_fixture()
      assert {:error, %Ecto.Changeset{}} = Transactions.update_bet(bet, @invalid_attrs)
      assert bet == Transactions.get_bet!(bet.id)
    end

    test "delete_bet/1 deletes the bet" do
      bet = bet_fixture()
      assert {:ok, %Bet{}} = Transactions.delete_bet(bet)
      assert_raise Ecto.NoResultsError, fn -> Transactions.get_bet!(bet.id) end
    end

    test "change_bet/1 returns a bet changeset" do
      bet = bet_fixture()
      assert %Ecto.Changeset{} = Transactions.change_bet(bet)
    end
  end
end
