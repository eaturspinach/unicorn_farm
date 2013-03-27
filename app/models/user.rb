class User < ActiveRecord::Base
  attr_accessible :email, :first, :last

  has_many :appointments


  def self.create_user( omniauth_token )
      user = User.new
      user.authentications.build(:provider => omniauth_token["provider"], :uid => omniauth_token["uid"])
      user.name = omniauth_token["info"]["name"]
      user.email = omniauth_token["info"]["email"]
      user.nickname = omniauth_token["info"]["nickname"]
      user.save!
      user
  end
  
end
