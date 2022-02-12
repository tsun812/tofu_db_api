class Field < ActiveRecord::Base
  belongs_to :application
  has_many :values
end
