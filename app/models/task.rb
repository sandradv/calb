class Task < ApplicationRecord
    belongs_to :list
    before_save :default_values
    
    def default_values
        self.complete ||= false
    end
end