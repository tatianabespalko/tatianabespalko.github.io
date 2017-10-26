require 'csv'
require 'ostruct'
require 'date'
require_relative './movies.rb'

FIELDS = %i[ link name year country release_date genre length rating director actors collection month ]

class MovieCollection

  attr_accessor(:filename, :collection_array, :genre_collection)

  def initialize(filename = 'movies.txt')
    @filename = filename
    unless File.exist?(@filename)
      abort("\n\nTHERE IS NO FILE NAMED: #{filename}, PLEASE, ENTER VALID FILENAME.\nIF NO VALID FILENAME WILL BE ENTERED, PROGRAM WILL BE STARTED\n  WITH DEFAULT FILE: movies.txt\n\n")
    end
    @collection_array = CSV.foreach(@filename, col_sep: "|", headers: FIELDS).map { |x| Movie.new(self, x.to_h)}
    @genre_collection = @collection_array.map  { |x| x.genre}.flatten(1).uniq

  end

  def all
    @collection_array
  end

  def sort_by (for_sorting)
    sorted = @collection_array.sort_by(&for_sorting)
  end

  def filter (field_hash)
    field_hash.reduce(@collection_array) { |result, (k, v)| result.find_all {|x| x.match?(k,v)}}
  end

  def genre_exist?(genre)
    @genre_collection.include?(genre)
  end

  def stats(field)
    stats = @collection_array.map { |x| x.send(field)}.flatten(1).group_by { |x| x}
    stats.each { |k, v| stats[k] = v.count }.sort_by { |k, v| v }.to_h
  end
end