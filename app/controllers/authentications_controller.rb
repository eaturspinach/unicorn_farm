class AuthenticationsController < ApplicationController
  def new
  end

  def create
    omniauth = request.env["omniauth.auth"]
    authentication = Authentication.find_by_provider_and_uid(omniauth["provider"],omniauth["uid"])
    if authentication
      redirect_to '#/repos'
    else
      user = User.create_user( omniauth ) 
      Repository.create_repos( user )
      redirect_to users_show_path
    end
    session[:name] = omniauth["info"]["name"]
    session[:uid] = omniauth["uid"]
    session[:provider] = omniauth["provider"]
    session[:image] = omniauth["info"]["image"]
  end
end
