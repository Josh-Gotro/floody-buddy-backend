class User < ApplicationRecord
        has_many :user_gauges
        has_many :gauges, through: :user_gauges
end
