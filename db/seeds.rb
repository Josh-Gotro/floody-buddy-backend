# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


UserGauge.delete_all
User.delete_all
Gauge.delete_all

locations = ["Barton Ck at SH 71", "Shoal Ck at Silverway Dr", "Waller Ck at Koenig Lane", "Ft Br Boggy Ck at Manor Rd", "Boggy Ck at Webberville Rd", "Walnut Ck at Webberville Rd", "Boggy Ck at Manor Rd", "Shoal Ck at W 12th St", "Waller Ck at Red River St", "Barton Ck abv Barton Spgs", "Barton Ck at Lost Ck Blvd", "Waller Ck at E 1st St", "Colorado Rv at Austin", "W Bouldin Ck at Oltorf Rd", "Barton Ck at Loop 360", "Williamson Ck at Oak Hill", "Slaughter Ck at FM 1826", "Kincheon Br at William Cannon Blvd", "Williamson Ck at Manchaca Rd", "Williamson Ck at Jimmy Clay Rd", "Onion Ck at US Hwy 183", "Dry Ck at Navarro Ck Rd", "Bear Ck bl FM 1826", "Bear Ck at Spillar Ranch Rd", "Slaughter Ck at FM 2304", "Onion Ck at Twin Creeks Rd"]


5.times do
    User.create(name: Faker::Internet.unique.username, password: "123" )
end

locations.each{|loc|
    Gauge.create(location: loc, flood_stage: rand(5.1..14.0), water_level: rand(20), water_flow: rand(7.0), site_number: rand(10000..90000))
}

# 5.times do 
#     Gauge.create(location: Faker::Address.street_name, flood_stage: rand(5.1..14.0), water_level: rand(20), water_flow: rand(7.0), site_number: rand(10000..90000))
# end

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

# begin new process

