class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    @name = student_hash[:name]
    @location = student_hash[:location]
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
        self.new(student)
    end
  end

  def add_student_attributes(attributes_hash)
      binding.pry
      attributes_hash.each do |attributes|
          @twitter = attributes[:twitter]
          @linkedin = attributes[:linkedin]
          @github = attributes[:github]
          @blog = attributes[:blog]
          @profile_quote = attributes[:profile_quote]
          @bio = attributes[:bio]
          @profile_url = attributes[:profile_url]
      end
  end

  def self.all
      @@all
  end
end
