StateBuilder.build('CA') do
  company do
    edd { format '/\d{3}-\d{4}-\d/' }
    sos { format '/\d{4}/' }
  end
  
  employee do
    filing_status do
      options ['Single', 'Married', 'Married withhold as Single', 'Exempt']
    end

    withholding_allowance { max 20 }
    additional_withholding { max 4 }
  end
end
