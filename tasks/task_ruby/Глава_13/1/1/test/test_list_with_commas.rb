require 'minitest/autorun'
require 'list_with_commas'
class TestListWithCommas < Minitest::Test
	#2
	def setup
		@list = ListWithCommas.new
	end
	def test_it_prints_one_word_alone
		#1)list = ListWithCommas.new
		@list.items = ['apple']
		#assert('apple' == list.join, "Return value didn't equal 'apple'")
		assert_equal('apple', @list.join)
	end

	def test_it_joins_two_words_with_and
		#1) list = ListWithCommas.new
		@list.items = ['apple', 'orange']
		#assert('apple and orange' == list.join)
		assert_equal('apple and orange', @list.join)
	end
	def test_it_joins_three_words_with_commas
		#1) list = ListWithCommas.new
		@list.items = ['apple', 'orange', 'pear']
		#assert('apple, orange, and pear' == list.join)
		assert_equal('apple, orange, and pear', @list.join)
	end

end