class CreateContacts < ActiveRecord::Migration
  def up 
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :phone_number
      t.timestamps
    end

  Contact.create({  first_name:                  "Ned",
                    last_name:                 "Stark",
                    address:                   "555 Winterland ln, Winterfel Kingdom 23443",
                    phone_number:              "444-443-3322"
                 })

  Contact.create({  first_name:                  "Cersei",
                    last_name:                   "Lanister",
                    address:                     "1 Kings Landing Northwing Crownsland Westeros 23332",
                    phone_number:              "444-443-3324"
                 })

  Contact.create({  first_name:                  "John",
                    last_name:                 "Snow",
                    address:   "55 North Castleblack drive, Kingsrd 21223",
                    phone_number:              "444-443-3325"
                 })

  Contact.create({  first_name:                  "Daenerys",
                    last_name:                 "Targaryen",
                    address:   "22 Pyramid Rd, Meereen 456733",
                    phone_number:              "444-443-3326"
                 })

  end
  def down
    drop_table :contacts
  end
end
