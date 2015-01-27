class User < ActiveRecord::Base
	has_secure_password
	validates :first_name, presence: true
	validates :user_name, presence: true, length: { in: 5..20 }, uniqueness: true
end