class Unity < ActiveRecord::Base

    attr_accessible :name, :initials

    validates :name, :presence => true
    validates :initials, :presence => true

end
