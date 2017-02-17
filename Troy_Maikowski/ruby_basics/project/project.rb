class Project
	attr_accessor :name, :description, :team

	def initialize(name, description)
		@name = name
		@description = description
		@team = []
	end

	def elevator_pitch
		return "#{@name}, #{@description}"
	end

	def add_to_team(team_member)
		@team << team_member
		return @team
	end
end

# project = Project.new("Project 1", "The coolest project ever")
# puts project.name

# project.elevator_pitch