class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    @name = student_hash[:name]
    @location = student_hash[:location]
    @@all << self
  end

  def self.create_from_collection(students_array)
      binding.pry
    #   students_array.each do |student|
    #       @name = student[:name]
    #       @location = student[:location]
    #       @@all << student
      #
    #   end
    students_array.each do |student|
        self.class.new(student)
    end


  end

  def add_student_attributes(attributes_hash)

  end

  def self.all
      @@all
  end
end
