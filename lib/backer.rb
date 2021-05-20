require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        new_array = []
        ProjectBacker.all.each do |project_backer_instance|
            project_backer_instance.backer == self ?
            new_array << project_backer_instance.project :
            nil
        end
        new_array
    end
end