class Facility < ApplicationRecord
  has_many :animals
  belongs_to :user, optional: true
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end
