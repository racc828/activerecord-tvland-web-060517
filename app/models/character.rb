require "pry"

class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show_name)
    new_character = Show.new(show_name)
    self.show = new_character
  end

end
