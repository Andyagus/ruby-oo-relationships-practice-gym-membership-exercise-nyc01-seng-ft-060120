# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

andy = Lifter.new("Andy", 100)
josh = Lifter.new("Josh", 125)
brian = Lifter.new("Brian", 200)
adam = Lifter.new("Adam", 240)

equinox = Gym.new("equinox")
hourfitness = Gym.new("24 Hour Fitness")
nysc = Gym.new("nysc")
crunch = Gym.new("crunch")

membership1 = Membership.new(100, equinox, andy)
membership2 = Membership.new(320, hourfitness, josh)
membership3 = Membership.new(210, nysc, brian)
membership4 = Membership.new(210, crunch, adam)
membership5 = Membership.new(200, crunch, andy)


binding.pry

puts "Gains!"
