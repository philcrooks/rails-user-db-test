# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)x

for u in 1..11
  User.create([{username: "user#{u}", email: "user#{u}@codeclan.com"}])
end

u = 1
User.all.each do |usr|
  for m in 1..282
    if (((m - 1 ) % 10) < (u - 1))
      Mountain.create([{mtn_id: m, climbed_on: '2016-10-23', user_id: usr.id}])
    end
  end
  u += 1
end
