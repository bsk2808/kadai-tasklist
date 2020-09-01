class User < ApplicationRecord
  before_save { self.username.downcase! }
  validates :username, presence: true, length: { maximum: 50 },
            uniqueness: { case_sensitive: false }
  has_secure_password
  
  has_many :tasks
end
