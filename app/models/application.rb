class Application < ActiveRecord::Base
  belongs_to :user
  has_many :fields
  has_many :records
end
