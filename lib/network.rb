class Network
  attr_reader :name, :shows

  def initialize(network)
    @name = network
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    salaries = []
    @shows.each do |show|
      show.characters do |character|
        salaries << character.salary
      end
    end
  end
end

# @nbc.shows[0].characters[0].salary
