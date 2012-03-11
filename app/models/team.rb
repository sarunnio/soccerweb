class Team < ActiveRecord::Base
  # has_many  :team_users,   
            # :foreign_key => "team_id",
            # :dependent => :destroy
  # has_many  :team_members, :through => :team_users, :source => :users
  has_many :teamusers, :foreign_key => :team_id
  has_many :users, :through => :teamusers
end
