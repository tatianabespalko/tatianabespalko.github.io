require "item_container"
require "film"
require "name"
require "item"
require "virtual_item"
require "real_item"

@items = []
@items << VirtualItem.new({:film => titanic, :feeling => Titanic is a bad movie})
@items << RealItem.new({:film => matrix, :feeling => Matrix is a good movie})
