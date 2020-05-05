class Gauge < ApplicationRecord
    has_many :user_gauges
    has_many :users, through: :user_gauges
end
