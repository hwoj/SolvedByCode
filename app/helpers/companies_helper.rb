module CompaniesHelper
  def benefits(benefit)
    case benefit
    when "Dental care"
      return '<i class="fas fa-tooth"></i> <span class="benefit" style="margin-left: 5px;> Dental care</span>'
    when "Health care"
      return '<i class="fas fa-medkit"></i> <span class="benefit" style="margin-left: 5px;> Health care</span>'
    when "Pension plans"
      return '<span class="glyphicon glyphicon-usd"></span> <span class="benefit" style="margin-left: 5px;"> Pension plans</span>'
    when "Work remotely"
      return '<span class="glyphicon glyphicon-bed"></span> <span class="benefit" style="margin-left: 5px;"> Work remotely</span>'
    when "Daily free meals"
      return '<i class="fas fa-utensils"></i> <span class="benefit" style="margin-left: 5px;"> Daily meals</span>'
    when "Gym membership"
      return '<i class="fas fa-dumbbell"></i> <span class="benefit">Gym membership</span>'
    else
      return benefit
    end
  end
end
