require 'pry'

class Song

  extend Memorable::ClassMethod
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  # include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
