class Regional < ActiveRecord::Base

   has_many :users
   has_many :centers

end
