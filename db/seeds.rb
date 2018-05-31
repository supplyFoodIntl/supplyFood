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
  {version: "20180530133729"},
  {version: "20180530213344"},
  {version: "20180530213347"},
  {version: "20180530213349"},
  {version: "20180530213350"},
  {version: "20180530213357"},
  {version: "20180530220017"},
  {version: "20180530221847"},
  {version: "20180530222940"},
  {version: "20180530225834"},
  {version: "20180530230012"},
  {version: "20180531004503"},
  {version: "20180531140818"},
  {version: "20180531143622"}
])
AddressType.create!([
  {name: "Home"},
  {name: "Business"},
  {name: "Billing"},
  {name: "Shipping"}
])
AssingmentType.create!([
  {name: "Collect", description: "Collect donation from a donor"},
  {name: "Store", description: "Store donations on a distribution hub"},
  {name: "Delivery", description: "Transport donations to consumer"},
  {name: "Lost", description: "Inventory the storage to assure the donations are proper to consumption"},
  {name: "Fundraise", description: "contact possible donors"}
])
GoodType.create!([
  {name: "human food", good_type_id: nil},
  {name: "canned food", good_type_id: 6},
  {name: "dairy", good_type_id: 6},
  {name: "fruits and vegetables", good_type_id: 6},
  {name: "fresh meat", good_type_id: 6},
  {name: "grains", good_type_id: 6},
  {name: "take away food", good_type_id: 6}
])
IcType.create!([
  {name: "Passport"},
  {name: "National ID Card"},
  {name: "Social Security Number"}
])
Level.create!([
  {name: "Good samaritan", observation: "Some person who wants to help the other no matter what (11-50 meals/month)"},
  {name: "Caregiver", observation: "Just a person with a good heart (1-10 meals/month)"},
  {name: "Patron", observation: "A beacon to a better world (51+ meals/month)"}
])
MeasureUnit.create!([
  {name: "Kilogram"},
  {name: "Gram"},
  {name: "Pound"},
  {name: "Ounce"},
  {name: "Liter"},
  {name: "Mililiter"}
])
Person.create!([
  {name: "Daniel de Freitas Ribeiro", ic: "01234589", person_type_id: 1, ic_type_id: 1},
  {name: "Napoleão Pereira da Silva Fraga de Melo Neto", ic: "986566", person_type_id: 2, ic_type_id: 2},
  {name: "João Pedro da silva", ic: "9856", person_type_id: 1, ic_type_id: 3}
])
PersonType.create!([
  {name: "individual"},
  {name: "company"}
])
PostalCodeHint.create!([
  {code: "22281035", hint: "Real Grandeza"}
])
PublicPlaceType.create!([
  {name: "Street"},
  {name: "Avenue"},
  {name: "Road"}
])
SupplyFoodConfiguration.create!([
  {name: "Food Handling", description: "the importance of the food handling and health issues", value: nil, html_configuration: "Food Handling is important"},
  {name: "The value of a donation", description: "text to describe the value of a donation", value: nil, html_configuration: "Each donation is a proof of good will whose give some so important as food to a fellow men"},
  {name: "News", description: "news about funding and the media exposure", value: nil, html_configuration: "last news"},
  {name: "Services", description: "describe the services provided by your hunger relief project", value: nil, html_configuration: "we divide our work in 4 major activites : collect, storage, inspect and deliver"},
  {name: "Legal", description: "legal concerns and the legal agreement", value: nil, html_configuration: "<p>legal concerns</p><p>legal agreement</p>"}
])
User.create!([
  {username: "dribeiro", email: "dribeiroexpertise@gmail.com", password_digest: "Tetragra", person_id: 1, user_type_id: 1}
])
UserType.create!([
  {name: "Donor"},
  {name: "Volunteer"},
  {name: "Manager"}
])
