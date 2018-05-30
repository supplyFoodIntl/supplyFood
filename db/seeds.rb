ArInternalMetadatum.create!([
  {key: "environment", value: "development"}
])
SchemaMigration.create!([
  {version: "0"},
  {version: "20180525183541"},
  {version: "20180525183606"},
  {version: "20180525183630"},
  {version: "20180530115446"},
  {version: "20180530115448"},
  {version: "20180530120334"},
  {version: "20180530120341"},
  {version: "20180530121054"},
  {version: "20180530125608"},
  {version: "20180530132117"},
  {version: "20180530132119"},
  {version: "20180530133654"},
  {version: "20180530133729"}
])
AddressType.create!([
  {name: "Home"},
  {name: "Business"},
  {name: "Billing"},
  {name: "Shipping"}
])
IcType.create!([
  {name: "Passport"},
  {name: "National ID Card"},
  {name: "Social Security Number"}
])
Person.create!([
  {name: "Daniel Ribeiro", ic: "01234589", person_type_id: 1, ic_type_id: 1},
  {name: "João da silva", ic: "9856", person_type_id: 1, ic_type_id: 1},
  {name: "Napoleão Pereira da Silva Fraga de Melo Neto", ic: "986566", person_type_id: 1, ic_type_id: 1}
])
PersonType.create!([
  {name: "individual"},
  {name: "company"}
])
PublicPlaceType.create!([
  {name: "Street"},
  {name: "Avenue"},
  {name: "test"}
])
UserType.create!([
  {name: "Donor"},
  {name: "Volunteer"},
  {name: "Consumer"}
])
