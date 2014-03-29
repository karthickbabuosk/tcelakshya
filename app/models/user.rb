class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :id
  has_many :contributions
  has_many :comments

  ROLES = {:user => 1, :admin => 2}

  before_save do |user| 
    user.email = email.downcase 
    user.role = ROLES[:user]

  acts_as_authentic do |c|
  	c.login_field = 'email'
  end

  default_scope :users, :conditions => {:role => ROLES[:user]}

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

end
