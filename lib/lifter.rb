class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership|membership.lifter==self}
  end

  def gyms
    memberships.map{|memberships|memberships.gym}
  end

  def self.average_lift
    (self.all.sum{|lifter|lifter.lift_total})/(self.all.count)
  end

  def total_cost
    memberships.sum{|membership|membership.cost}
  end

  def sign_up(cost,gym)
    Membership.new(cost,gym,self)
  end

end
