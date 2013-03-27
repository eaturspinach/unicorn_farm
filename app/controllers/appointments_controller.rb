class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(params[:appointment])
    if @appointment.save
      respond_to do |format|
        redirect_to user_path
        flash.now[:success] = "Appointment created!"
      end
    else
      render :new, :flash => {:error => "Very bad"}
    end
  end
end
