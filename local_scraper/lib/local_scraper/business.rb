
class LocalScraper::Business

@@all = []

attr_accessor :name, :details

def initialize(name, details)
@name = name
@details = details

save
end



def  self.all
@@all
end

def save
@@all << self
end


end
