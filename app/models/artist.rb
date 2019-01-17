class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products

  attachment :profile_image

  def self.search(search)
    if search
        Artist.where(['name LIKE ?', "%#{search}%"])
    else
        Artist.all
    end
  end
end
