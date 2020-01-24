class Project
  @@all = [] 
  attr_accessor :backer, :backers 
  attr_reader :backed_projects, :title 
def initialize(title)
  @title = title
  @backers = []
  @@all << self 
end

def add_backer(backer)
  @backers << backer
end
  backer.back_projects(self) unless backer.backed_projects.include?(self)
  
end

