require 'minitest/autorun'

class TestSomething < Minitest::Test

	#def test_true_assertion
	#	assert(true)
	#end

	#def test_false_assertion
	#	assert(false)
	#end
	def test_it_joins_two_words_with_and
		list = ListWithCommas.new
		list.items = ['apple', 'orange']
		assert('apple and orange' == list.join)
	end
	def test_it_joins_three_words_with_commas
		list = ListWithCommas.new
		list.items = ['apple', 'orange', 'pear']
		assert('apple, orange, and pear' == list.join)
	end
end