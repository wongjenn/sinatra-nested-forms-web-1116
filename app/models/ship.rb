class Ship
  attr_accessor :name, :type, :booty, :pirate

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@all << self
  end

end
