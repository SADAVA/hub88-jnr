

Operator.Accounts.create_user(%{
  name: "asd"
})

Operator.Accounts.create_user(%{
  name: "john12345",
  request_uuid: "583c985f-fee6-4c0e-bbf5-308aad6265af",
  country: Operator.Repo.get_by!(Operator.Common.Country, name: "FR"),
  jurisdiction: Operator.Repo.get_by!(Operator.Common.Jurisdiction, name: "MGA"),
  sub_partner_id: "123_sub",
  birth_date: "1980-10-20",
  registration_date: "2010-10-20",
  tags: [
    "VIP",
    "affiliate"
  ],
  sex: "MALE",
  affiliate_id: "124_af"
})