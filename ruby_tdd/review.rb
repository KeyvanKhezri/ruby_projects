require 'pry'

class Review

  def initialize(stars:, description: )
    @stars = stars
    @description = description
  end


  def stars
    if @stars.between?(1, 10)
      return @stars
    else
      return false
    end
  end

  def description
    if @description.empty?
      return true
    else
      return @description
    end
  end

 # attr_reader :description
end

#binding.pry
