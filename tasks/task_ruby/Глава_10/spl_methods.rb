tanya@Bespalko:~/tatianabespalko.github.io/tasks/task_ruby/Глава_10$ irb -I .
irb(main):001:0> require "word_splitter"
=> true
irb(main):002:0> splitter = WordSplitter.new
=> #<WordSplitter:0x00000001e8ce88>
irb(main):003:0> splitter.string = "salad beefcake corn beef pasta beefy"
=> "salad beefcake corn beef pasta beefy"
irb(main):004:0> splitter.find_all { |word| word.include?("beef") }
=> ["beefcake", "beef", "beefy"]
irb(main):005:0> splitter.reject { |word| word.include?("beef") }
=> ["salad", "corn", "pasta"]
irb(main):006:0> splitter.map { |word| word.capitalize }
=> ["Salad", "Beefcake", "Corn", "Beef", "Pasta", "Beefy"]
irb(main):007:0> splitter.find { |word| word.include?("beef") }
=> "beefcake"
irb(main):008:0> splitter.count
=> 6
irb(main):009:0> splitter.group_by { |word| word.include?("beef") }
=> {false=>["salad", "corn", "pasta"], true=>["beefcake", "beef", "beefy"]}
irb(main):010:0> splitter.first
=> "salad"
irb(main):011:0> splitter.max_by { |word| word.length }
=> "beefcake"
irb(main):012:0> splitter.to_a
=> ["salad", "beefcake", "corn", "beef", "pasta", "beefy"]
