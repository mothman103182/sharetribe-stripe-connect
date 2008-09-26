class Item < ActiveRecord::Base
  belongs_to :person
  validates_presence_of :title, :owner_id
  
  validates_length_of :title, :within => 2..50   
  validates_numericality_of :payment, :only_integer => true, :greater_than_or_equal_to => 0, :allow_nil => true, :allow_blank => true
  
end
