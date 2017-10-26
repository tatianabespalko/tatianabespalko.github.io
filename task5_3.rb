require_relative 'movie.rb'
class MoviesList

  FIELDS = [:url, :title, :year, :country, :release, :genres, :duration, :rating, :director, :actors]
  
  def initialize(file_name)
    @movies_list = File.read(file_name).split("\n").map { |v| Movie.new(FIELDS.zip(v.split("|")).to_h) }
  end
  
  def sort_by_field(field)
    @movies_list.sort_by{ |v| v.send(field) }
  end
  
  def filter_by_field(field)
    @movies_list.map{|v| v.send(field)}.flatten.uniq
  end
  
  def search_by_field(field, str)
    @movies_list.select{ |v| v.send(field).include? str }
  end
  
  def group_by_field(field)
    @movies_list.group_by{|v| v.send(field) }.each{ |_, v| v.map!{ |h| h.title }}
  end
  
  def group_by_actor
    @movies_list.map{|m| m.actors.map{|a| [m.title, a]} }.
      flatten(1).group_by(&:last).
      each{|_, v| v.map!(&:first)}
  end
  
  def exclude_by(field, str)
    @movies_list.reject { |v| v.send(field).include? str }
  end

  def count_by(field)
    group_by_field(field).reduce({}){ |tmp, (k, v)| tmp[k] = v.size; tmp }
  end
  
  def count_by_actor
    actor_list = @movies_list.map{ |v| v.actors }.flatten 
    actor_list.reduce({}) do |hash, k| 
      hash[k] = actor_list.count(k)
      hash
    end
  end
  
  def print_movie(list)
    list.each{ |v| puts v.to_s }
  end
end