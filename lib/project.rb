class Project
  attr_accessor :backer, :backers 
  attr_reader :backed_projects, :title 
def initialize(title)
  @title = title
  @backers = []
end

def add_backer(backer)
  @backer = Backer.new(backer)
  Backer.backed_projects <<  @backer 
  @backers << @backers 
end
  
end

