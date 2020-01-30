class Person
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end
  
  def normalize_name
    self.name.split(" ").collect{|w| w.capitalize}.join(" ")
  end
  
   def self.destroy_all
    self.all.clear
  end
  
  def self.create(name)
    person = self.new
    person.name = name
    @@all << person
  end
  
  def self.print_all
    self.all.each{|person| puts "#{person.name}"}
  end
  
  def self.normalize_names
    self.all.each do|person| 
      person.name = person.normalize_name
    end
  end
end

Person.create("lan joe")
Person.create("Ada Lovelace")
Person.create("Grace Hopper")

Person.print_all
Person.normalize_names
Person.print_all
