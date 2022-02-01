class Pokemon
  def initialize(name)
    @name = name
    @type =
    @food = 10
    @energy = 10
    @healht = 10
    @love = 10

p "#{@name} was born"
  end

  def stats
    p "Name: #{@name}"
    p "Food: #{@food}"
    p "Energy: #{@energy}"
    p "Health: #{@healht}"
    p "Love: #{@love}"
  end
  def eat
    p "#{@name} take some food"
    @food = 10
    through_time
  end

  def sleeping
    dreams = [
        "First kind of dream",
        "Second kind of dream",
        "Third kind of dream"
        ]
    p "#{@name} sleep and have intresting dreams"
    p "#{@name} see #{dreams.sample}"
    @energy = 10
    through_time
  end

  def health_point

    p "#{@name} take a medicines."
    @healht = 10
    through_time
  end

  def care

    p "#{@name} have your care and happy."
    @love = 10
    through_time
  end

  def through_time
    @food += rand(-5..5)
    check_food
    @energy += rand(-5..5)
    check_sleep
    @healht += rand(-5..5)
    check_health
    @love += rand(-5..5)
    check_care
  end

  def check_food
    if @food < 9 && @food > 2
      p "#{@name} need more food"
    elsif @food < 2
      p "#{@name} very hungry and close to die"
      exit
    end
  end

  def check_sleep
    if @energy < 9 && @energy > 2
      p "#{@name} need more of dreams"
    elsif @energy < 2
      p "#{@name} can fall at any time and start sleeping"
      exit
    end
  end

  def check_health
    if @healht < 9 && @healht > 2
      p "#{@name} need to improve health"
    elsif @healht < 2
      p "#{@name} so ill and close to die"
      exit
    end
  end

  def check_care
    if @love < 9 && @love > 2
      p "#{@name} need more your attention"
    elsif @love < 2
      p "#{@name} feel so lonely"
      exit
    end
  end


end

def menu
  puts 'Press 0 to check your pockemongotchi'
  puts 'Press 1 to feed your pockemongotchi'
  puts 'Press 2 to put to bed your pockemongotchi'
  puts 'Press 3 to heal your pockemongotchi'
  puts 'Press 4 to hug your pockemongotchi'
end

p "Choose type of pokemon"
p "1.Water
2.Fire
3.Earth
4.Electric"
type = gets.to_i

puts 'Please enter the name for your pockemongotchi:'
name = gets.capitalize.chomp
menu
pockemon = Pokemon.new(name)



command = gets.chomp
until command == 'exit'
  case command
  when '0'
    pockemon.stats
  when '1'
    pockemon.eat
  when '2'
    pockemon.sleeping
  when '3'
    pockemon.health_point
  when '4'
    pockemon.care
  else
    puts 'Sorry. Please try pressing 0-4.'
  end
  command = gets.chomp
end


