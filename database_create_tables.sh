#!/bin/bash

# Common tables
mix phx.gen.context 						\
	Common Country countries 				\
	name:string:unique

mix phx.gen.context 						\
	Common Jurisdiction jurisdictions		\
	name:string:unique

mix phx.gen.context 						\
	Common Currency currencies				\
	name:string:unique



# Accounts
mix phx.gen.context 						\
	Accounts User users 					\
	name:string:unique						\
	country:references:countries			\
	jurisdiction:references:jurisdictions	\
	sub_partner_id:string					\
	birth_date:datetime						\
	registration_date:datetime				\
	tags:array:string						\
	sex:string								\
	affiliate_id:string




# WalletAPI specific
mix phx.gen.context 						\
	Transactions Wallet wallets				\
	name:string:unique						\
	currency:references:currencies			\
	balance:integer

mix phx.gen.context 						\
	Transactions Round rounds				\
	name:string:unique

mix phx.gen.context 						\
	Transactions Bet bets					\
	transaction_uuid:string:unique			\
	round:references:rounds					\
	currency:references:currencies			\
	amount:integer

# Apply changes to database on disk
mix ecto.migrate
