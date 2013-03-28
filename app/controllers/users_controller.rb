class UsersController < ApplicationController
  def show
  end

  def new
    @appointment = Appointment.find(params[:appointment])
    @user = User.new
  end

  def create
    appointment = Appointment.find(params[:appointment])
    @user = User.create(params[:user])
    appointment.user = @user
    appointment.save
    if @user.save
      redirect_to appointment_path(appointment)
      flash[:success] = "Confirmed!"
    else
      render :new
    end
  end

end
