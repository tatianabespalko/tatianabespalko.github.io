require 'date'
class Movie
 
  MIN_RATING = 8
  CONVERTERS = {duration: lambda { |v| v.to_i }, year: lambda { |v| v.to_i }, 
                genres: lambda { |v| v.split(",") }, director: lambda { |v| v },
                rating: lambda { |v| v.to_f }, url: lambda { |v| v },
                title: lambda { |v| v }, country: lambda { |v| v },
                actors: lambda { |v| v.split(",").combination(1).to_a },
                release: lambda { |v| v }
                }
  
  attr_accessor :url, :title, :year, :country, 
                :release, :genres, :duration, 
                :rating, :director, :actors 

  def initialize(fields)
    fields.each do |k, v| 
      instance_variable_set("@#{k}", (CONVERTERS[k].call(v)))
    end
  end

  def to_s
    "\"%s\" is directed by %s in %s, played a starring %s, 
    Genre: %s, %d minutes duration. The film premiered in %s. Country: %s. Rating: %s" % [title, 
    director, year, actors.join(", "), genres.join(", "), duration, release, country, stars(rating)]
  end
  
  def stars(rating)
    rating_star = ((rating - MIN_RATING)*10).to_i
    "".ljust(rating_star, "*")
  end
  
  def director_surname
    self.director.split(" ").last
  end
  
  def month_name
    str = self.release
    month = Date.strptime(str, '%Y-%m-%d').mon 
    Date::MONTHNAMES[month]
  end
end