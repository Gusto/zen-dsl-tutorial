StateBuilder.build('CA') do
  company do
    edd { format '\d{3}-\d{4}-\d' }
    sos { format '[A-Z]\d{7}' }
  end
  
  employee do
    filing_status { options ['Single', 'Married', 'Head of Household'] }
    withholding_allowance { max 99 }
    additional_withholding { max 10000 }
  end
end
