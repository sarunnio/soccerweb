class Teamuser < ActiveRecord::Base
  # belongs_to :team
  # belongs_to :users
  # has_one :users, :foreign_key => id

  belongs_to :team  # foreign key - programmer_id
  belongs_to :user    # foreign key - project_id
end
