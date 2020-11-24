class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership|membership.gym==self}
  end

  def lifters
    memberships.map{|memberships|memberships.lifter}
  end

  def lifters_names
    lifters.map{|lifter|lifter.name}
  end

  def combined_lifting
    lifters.map{|lifter|lifter.lift_total}.sum
  end

end
