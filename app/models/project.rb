class Project < ApplicationRecord
  belongs_to :user
  has_many :step
  has_many :visit
end
