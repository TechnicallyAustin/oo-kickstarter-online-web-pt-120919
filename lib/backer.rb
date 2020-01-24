class Backer 
  attr_accessor :backed_projects, :project 
  attr_reader :name 
  @@all = [] 
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self 
  end
  
  def back_project(project)
    if project.backers.include?(self) == false 
    project.add_backer(self)
end

def backed_projects
  @backed_projects
end



  

    
  
  def self.all 
    @@all 
  end
  
    
    
    
end