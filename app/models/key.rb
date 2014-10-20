class Key < ActiveRecord::Base
  validates_presence_of :meaning
  validates_presence_of :code, message: "Enter a key or a key combination"
  validates_uniqueness_of :code, scope: [:ctrl, :alt, :shift], 
    message: "has been defined"
end
