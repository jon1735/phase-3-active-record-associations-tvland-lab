class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
    #can use #{self.first_name}/#{self.last_name}, but the word self is redundant
  end

  def list_roles
    characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end
