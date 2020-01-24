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
    Project.add_backer(self)
  end
end
    
  
  def self.all 
    @@all 
  end
  
    
    
    
end