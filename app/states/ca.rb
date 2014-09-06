StateBuilder.build('CA') do
  company do
    edd do
      format '###-####-#'
    end

    sos do
      setup_optional
      format '###'
    end
  end
  
  employee do
    filing_status do
      options ['Single', 'Married', 'Married withhold as Single', 'Exempt']
    end

    withholding_allowance do
      max 20
    end

    additional_withholding do
      setup_optional
      max 4
    end
  end
end