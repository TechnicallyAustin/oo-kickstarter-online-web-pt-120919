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

def back_project(project)
  @backer.acked_projects << project 
end

def add_backer(backer)
  @backers << backer
  if backer.backed_projects.include?(self) == false 
  backer.back_project(self)
  @backed_projects
  #binding.pry
end
end
  
end

