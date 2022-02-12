class Value < ActiveRecord::Base
    belongs_to :field
    belongs_to :record
end
