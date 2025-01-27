class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :photo
has_many :comment

has_many :liked_photos, :through => :likes, :source => :photo

# validates :username, presence: true, uniqueness: true

end
