# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 1
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
#2
Catigory.create(catigory_hashes)

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
    :name => "Dell",
    :website => "https://www.dell.com"
  }
]
#3
Manufacturer.create(manufacturers_hashes)

5.times do |index|
  Employee.create(
    :Firstname => "Employee",
    :Lastname => "#{index + 1}"
  )
end
#4
3.times do |index|
  Catigory.all.each do |catigory|
    Manufacturer.all.each do |manufacturer|
      Device.create(
        Name: "Device #{rand(100)}",
        catigory: catigory,
        manufacturer: manufacturer
      )
    end
  end
end
#6
5.times do |index|
  Software.create(name: "Software #{index + 1}", License_count: rand(1..5))
end

#7-8
3.times do
  Employee.all.each do |employee|
    software_id = rand(1..5)
    software = Software.find(software_id)
    employee.softwares << software
  end
end

3.times do
  Employee.all.each do |employee|
    device = Device.where(:employee_id => nil).sample
    device.employee = employee
    device.save
  end
end
