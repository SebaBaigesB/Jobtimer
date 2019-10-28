class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :job, presence: true
  validates :hourly_wage, presence: true
  mount_uploader :photo, PhotoUploader
  mount_uploader :banner, BannerUploader
end
