class Board < ActiveRecord::Base
  # Associations
  has_and_belongs_to_many :users
  has_many :keeps
  has_many :problems
  #has_many :trys


  # Validations
  validates :name, :presence => true
  validates :kpt_date, :presence => true
end
