class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :validatable

 	has_many :products

	def active_for_authentication?
		! self.deleted_at?
	end
end
