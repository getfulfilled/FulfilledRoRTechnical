class Analytic < ApplicationRecord
  enum status: [:login, :logout]

  def readonly?
    new_record? ? false : true 
  end
end
