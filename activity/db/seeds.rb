# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

catigory_hashes = [
  {
    :name => "smart phone"
  },
  {
    :name => "laptop"
  },
  {
    :name => "desktop"
  }
]
Catigories.create(catigory_hashes)

manufacturers_hashes = [
  {
    :name => "Apple",
    :website => "https://www.apple.com"
  },
  {
    :name => "Lenovo",
    :website => "https://www.lenovo.com"
  },
  {
    :name => "Dell"
    :website => "https://www.dell.com"
  }
]
Manufacturer.create(manufacturers_hashes)

5.times do |index|
  Employee.create(
    :Firstname => "Employee",
    :Lastname => "#{index + 1}"
  )
end

3.times do |catigory_id|
  3.times do |manufacturer_id|
    employee_id = 1
    device_name = "#{Category.find(catigory_id + 1).name} #{manufacturer_id + 1}"
    Device.create(
      name: device_name,
      catigory_id: catigory_id +1,
      manufacturer_id: manufacturer_id + 1,
      employee_id: employee_id
    )
    employee_id +=1
  end
end

5.times do |index|
  Software.create(name: "Software #{index + 1}", licence_count: rand(1..5))
end

15.times do
  employee_id = rand(1..5)
  software_id = rand(1..5)
  employee = Employee.find(employee_id)
  sofware = Software.find(software_id)
end
