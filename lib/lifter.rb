class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
  	@@all
  end

  def memberships
	Membership.all.select{|member| member.lifter == self}
  end

  def gyms 
  	memberships.map{|member| member.gym.name}
  end

  # - Get the average lift total of all lifters

  def self.lift_total
  	lift = Lifter.all.map{|lifter| lifter.lift_total}
  	lift.instance_eval { reduce(:+) / size.to_f}
  end

    # - Get the total cost of a specific lifter's gym memberships
   def gym_cost
   		gym_cost = memberships.map{|member|member.cost}
   		gym_cost.sum
   end

     # - Given a gym and a membership cost, sign a specific lifter up for a new gym

    def new_gym(gym, cost)
    	Membership.new(self, gym, cost)
    end


end











