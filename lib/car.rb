class Car
  attr_reader :color,
              :make,
              :model,
              :year

  def initialize(info)
    info_split = info[:description].split
    @color = info_split[0]
    @make = info_split[1]
    @model = info_split[2]
    @year = info[:year]
  end

  def age
    Time.now.year - @year.to_i
  end

  def vintage?
    age >= 25
  end
end
