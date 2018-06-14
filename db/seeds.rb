ArInternalMetadatum.create!([
  {key: "environment", value: "development"}
])
SchemaMigration.create!([
  {version: "20180613121617"},
  {version: "20180530133654"},
  {version: "20180530213344"},
  {version: "20180601162453"},
  {version: "20180530230012"},
  {version: "20180603044947"},
  {version: "20180530213350"},
  {version: "20180530132117"},
  {version: "20180530125608"},
  {version: "20180603044525"},
  {version: "20180531143622"},
  {version: "20180531140818"},
  {version: "20180530120334"},
  {version: "20180530213357"},
  {version: "20180603054821"},
  {version: "20180530132119"},
  {version: "20180601162455"},
  {version: "20180530120341"},
  {version: "20180531004503"},
  {version: "20180530220017"},
  {version: "20180601162533"},
  {version: "20180530213347"},
  {version: "20180603045241"},
  {version: "20180530213349"},
  {version: "20180603055833"},
  {version: "20180603055924"},
  {version: "20180602202645"},
  {version: "20180530133729"},
  {version: "20180613121933"},
  {version: "20180613122908"},
  {version: "20180605131808"},
  {version: "20180607235028"},
  {version: "20180608001055"},
  {version: "20180608201231"},
  {version: "20180609030049"},
  {version: "20180609030947"},
  {version: "20180609031250"},
  {version: "20180610184914"},
  {version: "20180611143023"},
  {version: "20180611165649"},
  {version: "20180611182521"},
  {version: "20180613120032"},
  {version: "20180613120607"},
  {version: "20180613121152"},
  {version: "20180613123021"}
])
User.create!([
  {email: "dribeiroexpertise@gmail.com", encrypted_password: "$2a$11$6qv01/265H/JnJcoq1PbXeaU0PLsOcyZH1FoXaC1EYilVCibd8bya", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 9, current_sign_in_at: "2018-06-13 11:26:04", last_sign_in_at: "2018-06-12 19:01:59", current_sign_in_ip: "192.168.0.108", last_sign_in_ip: "192.168.0.108"}
])
AddressCocoon.create!([
  {line_one: "1234", line_two: "32442", zip_code: 234234, person_cocoon_id: 4},
  {line_one: "1234", line_two: "32442", zip_code: 234234, person_cocoon_id: 4},
  {line_one: "456", line_two: "345", zip_code: 234234, person_cocoon_id: 4},
  {line_one: "aaa", line_two: "aaa", zip_code: 222, person_cocoon_id: 5},
  {line_one: "bbb", line_two: "bbr", zip_code: 2324342, person_cocoon_id: 5}
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
FormContact.create!([
  {name: "daniel ribeiro", subject: "problems", message: "annoying problem"},
  {name: "", subject: "", message: ""},
  {name: "daniel ribeiro", subject: "another problem", message: "this is another problem"},
  {name: "daniel ribeiro", subject: "teste 2", message: "mais um teste"}
])
GoodType.create!([
  {name: "human food", good_type_id: nil},
  {name: "canned food", good_type_id: 1},
  {name: "dairy", good_type_id: 1},
  {name: "fruits and vegetables", good_type_id: 1},
  {name: "fresh meat", good_type_id: 1},
  {name: "grains", good_type_id: 1},
  {name: "take away food", good_type_id: 1},
  {name: "beef", good_type_id: 5},
  {name: "chicken", good_type_id: 5},
  {name: "fish", good_type_id: 5},
  {name: "turkey", good_type_id: 5},
  {name: "pork", good_type_id: 5}
])
IcType.create!([
  {name: "National ID Card"},
  {name: "Social Security Number"},
  {name: "Passport"},
  {name: "test"},
  {name: "teste"}
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
  {name: "João Pedro da silva", ic: "9856", person_type_id: 1, ic_type_id: 3},
  {name: "Daniel Barbosa de Freitas Ribeiro", ic: "01234589", person_type_id: 1, ic_type_id: 1},
  {name: "Napoleão Pereira da Silva Fraga de Melo Neto", ic: "9865667", person_type_id: 2, ic_type_id: 2},
  {name: "", ic: "", person_type_id: 1, ic_type_id: 2},
  {name: "", ic: "", person_type_id: 1, ic_type_id: 2},
  {name: "fulano de tal", ic: "teste", person_type_id: 2, ic_type_id: 2}
])
PersonCocoon.create!([
  {name: "teste", ic: "123123", ic_type_id: 1},
  {name: "teste", ic: "teste", ic_type_id: 2},
  {name: "ddd", ic: "111", ic_type_id: 1}
])
PersonType.create!([
  {name: "individual"},
  {name: "company"}
])
PostalCodeHint.create!([
  {code: "22281035", hint: "Real Grandeza"}
])
PrivatePlaceType.create!([
  {name: "apartment"},
  {name: "house"},
  {name: "room"}
])
PublicPlace.create!([
  {name: "real grandeza", public_place_type_id: 1, postal_code_hint_id: 1}
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
  {name: "Legal", description: "legal concerns and the legal agreement", value: nil, html_configuration: "<p>legal concerns</p><p>legal agreement</p>"},
  {name: "Volunteer form contract", description: "the term of contract of the volunteer service", value: nil, html_configuration: "<p> volunteer contract<p><p>as a volunteer i hereby accept that my work is volunteer, not paid</p>"},
  {name: "Volunteer intro page", description: "initial page from volunteer menu, explaining the importance and work of the volunteer", value: nil, html_configuration: "<p>the volunteer work is the base of any hunger relief program<p><p> since the material resources are scarce , the sucess of the project is based on the strict organization and planning and besides all, the good will of the volunteers.</p>"}
])
UserType.create!([
  {name: "Donor"},
  {name: "Volunteer"},
  {name: "Manager"},
  {name: "Supplier"},
  {name: "Consumer"}
])
