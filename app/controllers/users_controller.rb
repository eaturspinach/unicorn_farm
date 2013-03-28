class UsersController < ApplicationController
  def show
  end

  def new
    @appointment = Appointment.find(params[:appointment])
    @user = User.new
    @user.appointments.build
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      redirect_to "/confirmation"
    else
      render :new
    end
  end

end
