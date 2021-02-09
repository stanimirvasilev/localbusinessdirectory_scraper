
class LocalScraper::Business

@@all = []

attr_accessor :name

def initialize(name)
@name = name
save
end


def  self.all
@@all
end

def save
@@all << self
end

#binding.pry
end
