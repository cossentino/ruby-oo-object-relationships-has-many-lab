

class Song

    attr_accessor :name
    attr_reader :artist
    
    @@all = []

    def self.all
        @@all
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
    end


    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        self.artist.name if artist
    end

end

