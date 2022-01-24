class AreaOfInterest < ApplicationRecord
	has_and_belongs_to_many :users
	def name_with_initial
    "#{name.first}. #{name}"
  end
end
