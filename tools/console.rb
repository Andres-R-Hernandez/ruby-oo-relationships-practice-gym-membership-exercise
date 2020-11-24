# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Big", 900)
lifter2 = Lifter.new("Med", 600)
lifter3 = Lifter.new("Small", 200)
lifter4 = Lifter.new("Biggest", 4000)
lifter5 = Lifter.new("Tiny", 50)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")
gym4 = Gym.new("Gym4")
gym5 = Gym.new("Gym5")
gym6 = Gym.new("Gym6")

membership1 = Membership.new(30,gym1,lifter1)
membership2 = Membership.new(30,gym1,lifter2)
membership3 = Membership.new(30,gym1,lifter3)
membership4 = Membership.new(45,gym2,lifter1)
membership5 = Membership.new(45,gym2,lifter3)
membership6 = Membership.new(45,gym2,lifter5)
membership7 = Membership.new(90,gym3,lifter4)
membership8 = Membership.new(10,gym4,lifter1)
membership9 = Membership.new(10,gym4,lifter4)
membership10 = Membership.new(120,gym5,lifter4)
membership11 = Membership.new(20,gym6,lifter3)
membership12 = Membership.new(20,gym6,lifter5)

binding.pry

puts "Gains!"
