class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # has_many :contacts
   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  # validates :username, presence: true,
  #                      uniqueness: { case_sensitive: false },
  #                      length: { in: 6..20 }  
  # validates :name, :phone, presence: true

  def self.sending
    UserMailer.cron_email.deliver
  end
  
end
