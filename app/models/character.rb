class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def say_that_thing_you_say
    "#{name} always says: #{catchphrase}"
    #can do {self.name}/{self.catchphrase}, but it's redundant
  end
end
