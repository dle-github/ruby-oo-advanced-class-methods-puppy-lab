class Dog
    @@all = Array.new

    def initialize(name)
        p "[initialize]"
        @name = name
        save
    end
    attr_accessor :name
    def self.all
        p "[all]"
        @@all
    end

    def self.clear_all
        p "[clear_all]"
        until @@all.length == 0
            @@all.pop
        end
    end

    def self.print_all
        #p "[print_all]"
        @@all.each do |x|
            puts x.name
        end
    end

    def save
        p "[save]"
        @@all << self
    end
end
