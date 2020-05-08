# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Gauge.delete_all
UserGauge.delete_all


5.times do
    User.create(name: Faker::Internet.unique.username, password: "123" )
end

5.times do 
    Gauge.create(location: Faker::Address.street_name, flood_stage: rand(5.1..14.0), water_level: rand(20), water_flow: rand(7.0), site_number: rand(10000..90000))
end

UG_01 = UserGauge.create(user_id: User.first.id, gauge_id: Gauge.fifth.id)
UG_02 = UserGauge.create(user_id: User.second.id, gauge_id: Gauge.fourth.id)
UG_03 = UserGauge.create(user_id: User.third.id, gauge_id: Gauge.third.id)
UG_04 = UserGauge.create(user_id: User.fourth.id, gauge_id: Gauge.second.id)
UG_05 = UserGauge.create(user_id: User.fifth.id, gauge_id: Gauge.first.id)

UG_06 = UserGauge.create(user_id: User.first.id, gauge_id: Gauge.first.id)
UG_07 = UserGauge.create(user_id: User.second.id, gauge_id: Gauge.second.id)
UG_08 = UserGauge.create(user_id: User.third.id, gauge_id: Gauge.first.id)
UG_09 = UserGauge.create(user_id: User.fourth.id, gauge_id: Gauge.fourth.id)
UG_10 = UserGauge.create(user_id: User.fifth.id, gauge_id: Gauge.fifth.id)

UG_11 = UserGauge.create(user_id: User.first.id, gauge_id: Gauge.second.id)
UG_12 = UserGauge.create(user_id: User.second.id, gauge_id: Gauge.third.id)
UG_13 = UserGauge.create(user_id: User.third.id, gauge_id: Gauge.fourth.id)
UG_14 = UserGauge.create(user_id: User.fourth.id, gauge_id: Gauge.fifth.id)
UG_15 = UserGauge.create(user_id: User.fifth.id, gauge_id: Gauge.fourth.id)