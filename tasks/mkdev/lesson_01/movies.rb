require "init"

film = Film.new
ARGV.each do |a| # ARGV - масив, который содержит все аргументы переданные в нашей командной строке
@items.each { |i| film.add_items(i) if a == i.name}
end
p film.items