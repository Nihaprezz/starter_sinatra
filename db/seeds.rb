Rental.destroy_all

person1 = Person.find_or_create_by(name: "Christina", phone_number: "5712886390", room_number: "6473")

ski1 = Ski.find_or_create_by(brand: "Salomon", color: "red", boots_size: 8)
ski2 = Ski.find_or_create_by(brand: "K2", color: "black", boots_size: 10)
ski3 = Ski.find_or_create_by(brand: "Rossignol", color: "White and Red", boots_size: 9)
ski4 = Ski.find_or_create_by(brand: "Line", color: "Blue", boots_size: 12)

rental1 = Rental.find_or_create_by(person_id: person1.id, ski_id: ski1.id)
