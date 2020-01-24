require 'pry'
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
  if Backer.backed_projects.include?(self) == false 
  Backer.backed_project(self)
  @backed_projects
  #binding.pry
end
end
  
end

