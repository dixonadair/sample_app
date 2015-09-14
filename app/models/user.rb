class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Set up accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :username

  # below is necessary because devise won't automatically set validations for your custom attributes (e.g. username in this case)
  validates_presence_of :username
end
