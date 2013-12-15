class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook, :twitter]
  has_many :comments
  has_many :questions

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    User.where(provider: auth.provider, uid: auth.uid)
      .first_or_create(name: auth.info.nickname,
                       email: auth.info.email,
                       password: Devise.friendly_token)
  end

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    User.where(provider: auth.provider, uid: auth.uid)
      .first_or_create(name: auth.info.nickname,
                       password: Devise.friendly_token)
  end

  def answer?
    role == "answer"
  end
end
