class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        new_array = []
        ProjectBacker.all.each do |project_backer_instance|
            project_backer_instance.project == self ?
            new_array << project_backer_instance.backer :
            nil
        end
        new_array
    end
end