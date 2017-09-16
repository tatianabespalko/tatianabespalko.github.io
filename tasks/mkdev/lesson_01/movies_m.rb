# вариант с массивом
putting = ARGV.join " "
def good_movie(putting)
  my_movies = ["Heart and Souls", "El Estudiante"] 
  my_movies.each do |good_film|
    if putting.downcase == good_film.to_s.downcase 
      return puts "#{putting} is a good movie" 
    end
  end
  puts "Haven't seen #{putting} yet"
end
good_movie(putting)
