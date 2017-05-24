class Photo < ApplicationRecord

has_many :comment
has_many :likes

belongs_to :user

has_many :fans, :through => :likes, :source => :user

validates :user_id, presence: true

end
