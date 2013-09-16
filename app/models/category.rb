class Category < ActiveRecord::Base
  
  has_many :issues,
    inverse_of: :category
  
  validates_presence_of :name

end
