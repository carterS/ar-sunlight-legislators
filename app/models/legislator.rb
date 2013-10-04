require_relative '../../db/config'

class Legislator < ActiveRecord::Base

  validates :email, :uniqueness => true
  
  def name
    "#{self.firstname} #{self.middlename} #{self.last_name} #{self.name_suffix}"
  end

end
