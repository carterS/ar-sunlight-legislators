require_relative '../../db/config'

class Legislator < ActiveRecord::Base

  validate :validate_phone_num

  def name
    "#{self.firstname} #{self.middlename} #{self.lastname} #{self.name_suffix}"
  end
  
  def validate_phone_num
    if self.phone.gsub(/[^\d]/, '').length < 10
      errors.add(:phone, "invalid phone number")
    end
  end
end

#Driver Code
def view_all_state_legislators(state)
  sen = []
  rep = []
  states = Hash.new

  Legislator.all.each do |leg|
    states[leg.id] = leg.state
  end

  states.each { |key, value|
    if value == state && Legislator.find(key).in_office
      if Legislator.find(key).title == 'Sen'
        sen << Legislator.find(key).id
      else
        rep << Legislator.find(key).id
      end
    end
  }

  puts "Senators:"
  sen.each { |id|
    print Legislator.find(id).name + " "
    print Legislator.find(id).party + " "
    print Legislator.find(id).title + " "
    print Legislator.find(id).state
    puts ""
  }
  puts ""
  puts "Representatives:"
  rep.each { |id|
    print Legislator.find(id).name + " "
    print Legislator.find(id).party + " "
    print Legislator.find(id).title + " "
    print Legislator.find(id).state
    puts ""
  }
end

view_all_state_legislators('CA') #step right up, pick a state, any state










