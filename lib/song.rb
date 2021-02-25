require 'pry'
class Song 
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        filename = filename.split(" - ")
        artist = filename[0]
        name = filename[1]
        new_song = self.new(name)
        new_song.artist_name = artist
        new_song
    end

    def artist_name=(name)
        @artist = Artist.find_or_create_by_name(name)
    end




end