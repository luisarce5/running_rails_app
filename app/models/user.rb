class User < ActiveRecord::Base
  has_many :runs
  has_secure_password

  validates :user_name, presence: true

end
