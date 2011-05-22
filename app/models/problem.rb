class Problem < ActiveRecord::Base
  # Associations
  belongs_to :board
  belongs_to :user
end
