class User < ActiveRecord::Base
  has_many :applications, :dependent => :delete_all
end
