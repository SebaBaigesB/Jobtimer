class Project < ApplicationRecord
  belongs_to :user
  has_many :step, dependent: :destroy
  has_many :visit, dependent: :destroy

  mount_uploader :photo, PhotoUploader, optional: true
end
