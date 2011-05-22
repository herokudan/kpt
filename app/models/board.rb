class Board < ActiveRecord::Base
  # Validations
  validates :name, :presence => true
  validates :kpt_date, :presence => true
end
