class Software < ApplicationRecord
 has_and_belongs_to_many :employees 
 def compliant?
   self.License_count >= employees.count
 end
end
