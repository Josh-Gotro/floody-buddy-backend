class UserGauge < ApplicationRecord
  belongs_to :gauge
  belongs_to :user
end
