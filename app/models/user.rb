class User < ActiveRecord::Base
  has_many :events
  has_many :participations
  has_secure_password
  validates :username, uniqueness: true, length: { minimum: 3, maximum: 15 }

  def to_s
    return "#{self.username}"
  end
end
