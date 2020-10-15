class User < ApplicationRecord
    has_many :reviews
    has_many :games, through: :reviews
end