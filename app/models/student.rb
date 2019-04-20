class Student < ActiveRecord::Base
  after_initialize :init
  def init
    self.active = true if self.bool_field.nil?
  end
  def to_s
    self.first_name + " " + self.last_name
  end
end
