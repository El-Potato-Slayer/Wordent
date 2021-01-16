class User < ApplicationRecord
  attr_writer :login
  validate :name

  def login
    @login || self.name || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(name) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:name) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

  
  def validate_name
    if User.where(email: name).exists?
      errors.add(:name, :invalid)
    end
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, foreign_key: :author_id
  has_many :votes

  # validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
end
