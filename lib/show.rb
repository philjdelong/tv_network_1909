class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    show_salary = 0
    @characters.each do |character|
      show_salary += character.salary
    end
    show_salary
  end
end
