class Project
	attr_accessor :project_Name, :project_Description
	def initialize(name, description)
		@project_name = name
		@project_Description = description
	end
	def elevator_pitch
		puts "Project Name: %s" % @project_name
		puts "Project Description: %s" % @project_Description
	end
end
project1 = Project.new("College Savings Calculator", "Create a caluculator to estimate future cost of college")
project1.elevator_pitch
