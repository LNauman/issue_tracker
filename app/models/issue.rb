class Issue < ActiveRecord::Base
  
  belongs_to :category,
    inverse_of: :issues

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :category
  validates_presence_of :severity

  def self.categories
    [
      'Bug',
      'Feature Request',
      'Customer Service'
    ]
  end

  def self.severities
    [
      'Low',
      'Moderate',
      'High'
    ]
  end

end
