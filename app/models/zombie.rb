class Zombie < ApplicationRecord
	after_initialize :set_defaults, unless: :persisted?
  # The set_defaults will only work if the object is new

  def set_defaults
    self.brains ||= 0
    self.iq ||= 0
    # self.bool_field = true if self.bool_field.nil?
  end
	
	validates :name, :brains, :iq,  presence: true
  validates :brains, :iq,         numericality: { only_integer: true }

  def eat_brains
    self.iq = self.iq + 10
  end

  def hungry?
    true
  end
end
