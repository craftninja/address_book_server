def officer_serializer(officer)
  company = Company.find(officer.company_id)
  {
    id: officer.id,
    name: officer.name,
    company: {
      id: company.id,
      address_snippet: company.address_snippet,
      company_number: company.company_number,
      title: company.title,
    }
  }
end
