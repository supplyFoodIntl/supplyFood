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
PersonType.create!([
  {name: "individual"},
  {name: "company"}
])
Person.create!([
  {name: "João Pedro da silva", ic: "9856", person_type_id: 1, ic_type_id: 3},
  {name: "Daniel Barbosa de Freitas Ribeiro", ic: "01234589", person_type_id: 1, ic_type_id: 1},
  {name: "Napoleão Pereira da Silva Fraga de Melo Neto", ic: "9865667", person_type_id: 2, ic_type_id: 2}
])

PostalCodeHint.create!([
  {code: "22281035", hint: "Real Grandeza"}
])
PrivatePlaceType.create!([
  {name: "apartment"},
  {name: "house"},
  {name: "room"}
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
  {name: "Manager"}
])
User.create!([
  {username: "dribeiro", email: "dribeiroexpertise@gmail.com", password_digest: "Tetragra", person_id: 1, user_type_id: 1},
  {username: "dribeiro2", email: "dribeiroexpertise@gmail.com", password_digest: "Tetra", person_id: 1, user_type_id: 1}
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
   {name: "pork", good_type_id: 5},
   {name: "fish", good_type_id: 5},
   {name: "turkey", good_type_id: 5}
 ])

