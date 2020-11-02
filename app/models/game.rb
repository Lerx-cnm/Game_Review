class Game < ApplicationRecord
    scope :alphabitized, -> {order(:title)}

    has_many :reviews
    has_many :users, through: :reviews

    validates :title, presence: true
    validates :genre, presence: true
    validates :price, presence: true
    validates :platform, presence: true
    validates :price, numericality: true

    
end