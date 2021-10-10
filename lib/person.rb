# your code goes here
class Person
  # attr_reader :happiness
  # attr_writer :happiness
  attr_accessor :bank_account, :hygiene
    def initialize( name, happiness=8, hygiene=8, bank_account=25 )
      @name = name
      @happiness = happiness
      @hygiene = hygiene
      @bank_account = bank_account
    end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def bank_account=(new_bank_account)
    @bank_account = new_bank_account
  end 

  def happiness
    @happiness 
  end 

  def happiness=(value)
    if value >= 0 && value <= 10
      @happiness = value
    end
    if value > 10
      @happiness = 10
    end
    if value < 0
      @happiness = 0
    end 
  end 

  # def happiness=(happiness)
  #   until @happiness > 10 && @happiness < 0
  #     @happiness = happiness 
  #   end 
  #   # puts @happiness
  #   # if @happiness <= 10
  #   #   value = newvalue
  #   # elsif @happiness >= 10
  #   #   value = value
  #   # end 
  # end
  #   begin 
      # if @happiness > 10
      #   @happiness = value
      # elsif @happiness !> 10
      #   @happiness = newvalue
      # end
  #   end
  # end

  # def happiness=(value)
  #   @happiness = value
  # end

  # def happiness
  #   @happiness = 8
  # end


  
  # def happiness
  #   @happiness = 8
  # end
  

  def hygiene
    @hygiene
  end

  def hygiene=(value)
    if value >= 0 && value <= 10
      @hygiene = value
    end
    if value > 10
      @hygiene = 10
    end
    if value < 0
      @hygiene = 0
    end
  end

  def happy?
    if self.happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if self.hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(amount)
    @bank_account += amount
    return "all about the benjamins"
  end 

  def take_bath()
    
    # @hygiene += 4
    if @hygiene < 10
      self.hygiene += 4
    elsif @hygiene > 10
      self.hygiene= 10
    end
      

    # end 
    # self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out(value=3)
    self.hygiene -= value
    if @hygiene < 0
      @hygiene = 0
    end
    self.happiness += 2
    if @happiness > 10
      @happiness = 10
    end
    # self.hygiene-3
    # self.happiness+2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness +=3
    friend.happiness+=3
    if @happiness > 10 || friend.happiness > 10
      @happiness = 10
    end 
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end 

  def start_conversation(friend, topic)
    if (topic == "politics")
      puts self.happiness
      self.happiness -=2
      friend.happiness-=2
      if @happiness < 0 || friend.happiness < 0
        @happiness = 0
      end 
      self.happiness
      # self.happiness
      # @happiness -=2 && friend.happiness -=2
      return "blah blah partisan blah lobbyist"
    elsif (topic == "weather")
      self.happiness +=1
      friend.happiness +=1
      if @happiness > 10 
        self.happiness = 10
      end
      if friend.happiness > 10
        friend.happiness = 10
      end
      # self.happiness=(11)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
  
end

friend = Person.new("Name", 11, 9, 100)
puts friend.happiness
# p2 = Person.hygiene="5"
# person.happiness = 9
# person.happiness = 9
# p.happiness = 9
# p.happiness
# hi = Hello.new( "Name")

# person = Person.new(name)