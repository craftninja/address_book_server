def create_company(options = {})
  Company.create!({
    title: 'Cognizant',
    address_snippet: '123 Main Street',
    company_number: '1234',
  }.merge(options))
end

def create_officer(company = create_company, options = {})
  Officer.create!({
    name: 'Serena Williams',
    company_id: company.id
  }.merge(options))
end
