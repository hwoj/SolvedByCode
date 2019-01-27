module CompaniesHelper
  def benefits(benefit)
    case benefit
    when "Dental care"
      return '<i class="fas fa-tooth"></i> <span>Dental care</span>'
    when "Health care"
      return '<i class="fas fa-medkit"></i> <span>Health care</span>'
    when "Pension plans"
      return '<span class="glyphicon glyphicon-usd"></span> <span>Pension plans</span>'
    when "Work remotely"
      return '<span class="glyphicon glyphicon-bed"></span> <span>Work remotely</span>'
    when "Daily free meals"
      return '<i class="fas fa-utensils"></i> <span>Daily meals</span>'
    when "Gym membership"
      return '<i class="fas fa-dumbbell"></i> <span>Daily meals</span>'
    else
      return benefit
    end
  end
end
