# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company = Company.create!({
  title: 'COG LIMITED',
  address_snippet: 'Ivy House Market Place, Reepham, Norwich, England, NR10 4LZ',
  company_number: '03979221',
})

officer = Officer.create!({
  name: 'HILL, Matthew Alistair',
  company_id: company.id,
})

officer = Officer.create!({
  name: 'SLATER, Mark Allen',
  company_id: company.id,
})
