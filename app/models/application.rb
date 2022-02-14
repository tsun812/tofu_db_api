class Application < ActiveRecord::Base
  belongs_to :user
  has_many :fields, :dependent => :delete_all
  has_many :records, :dependent => :delete_all
end
