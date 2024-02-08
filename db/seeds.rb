require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

50.times do |dg|
  Dogsitter.create!(
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    #city: City.all.sample
  )
  dg +=1
  puts "50 dogsitters ont été créés !"
end

100.times do |d|
  Dog.create!(
    name:Faker::Name.first_name,
    age:Faker::Number.within(range: 1..15),
    #city: City.all.sample
  )
  d +=1
  puts "100 chiens ont été créés !"
end

80.times do |s|
  Stroll.create!(
    dogsitter: Dogsitter.all.sample, 
    dog: Dog.all.sample,
    date:Faker::Time.between_dates(from: Date.today - 1000, to: Date.today + 45, period: :day),
    #city: City.all.sample
  )
  s+=1
  puts "80 promenades ont été créées !"
end

20.times do |c|
  City.create!(
    city_name:Faker::Address.city
  )
  c+=1
  puts "20 villes ont été créées !"
end