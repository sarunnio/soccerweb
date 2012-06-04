class Project < ActiveRecord::Base
  has_many :tasks
  def task_attributes=(task_attributes)
    task_attributes.each do |attributes|
      tasks.build(attributes)
    end
  end
end
