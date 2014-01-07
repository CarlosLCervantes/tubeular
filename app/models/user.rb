class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  #attr_accessor :username
  has_many :favorites
  has_many :videos, through: :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :username, :allow_blank => false
  validates_uniqueness_of :username, :allow_blank => false

  def forem_admin?
    self.forem_admin
  end

  def to_s
    self.username
  end
end
