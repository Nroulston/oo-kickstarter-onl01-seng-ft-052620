class Backer
  attr_accessor :name 
  attr_reader :backed_projects
 
  def initialize(name)
    self.name = name
    @backed_projects = []
  end

  def back_project(project_instance)
    @backed_projects << project_instance
    project_instance.add_backer(self) unless project_instance.backers.include?(self)
  end
  
end