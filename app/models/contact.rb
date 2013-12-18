class Contact < ActiveRecord::Base
  
  belongs_to :user

  belongs_to :group
  
  validates :name, :phone, :email, presence: true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
end
