class Artist
    attr_accessor :name

    @@all

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        if song.artist = self
            save
        end
    end

    def self.find_or_create_by_name(name)
        if self.all.find{|person| person.name == name}
            self.all.find{|person| person.name == name}
        else 
            self.new(name)
        end
    end

    def print_songs
       Song.all.each do|song| 
            if song.artist == self 
                puts song.name 
            end
        end
    end
end