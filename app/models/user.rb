class User < ActiveRecord::Base

    authenticates_with_sorcery!

    has_many :assignments
    has_many :roles, :through => :assignments

    attr_accessible :email, :password, :password_confirmation , :name
    attr_accessible :phone, :ip, :mobile, :location, :occupation_id
    attr_accessible :center_id, :foto, :foto_file_name, :foto_content_type
    attr_accessible :foto_file_size, :foto_updated_at, :center_name, :roles
    
    attr_accessible :crypted_password, :salt, :created_at, :updated_at, :activation_state
    attr_accessible :activation_token, :role, :role_ids
    
    validates_confirmation_of :password
    validates_presence_of :password, :on => :create
    validates_presence_of :email, :name, :phone
    validates_uniqueness_of :email

    belongs_to :occupation
    belongs_to :center
    
    attr_accessible :center_name
                  
    has_attached_file :foto,
                      :styles => { :medium => "300x300>",
                                   :thumb => "100x100#",
                                   :small => "150x150>" },
                      :default_url => "user.png", 
                      :url => "/assets/:attachment/:id_:style.:extension", 
                      :path => ":rails_root/public/assets/:attachment/:id_:style.:extension" 

    def self.search(search, page)
        paginate :per_page => 5, :page => page,
                 :conditions => ['upper(name) like ?', "%#{search}%".upcase]
    end

    def has_role?(role_sym)
        roles.any? { |r| r.name.underscore.to_sym == role_sym }
    end
    
end