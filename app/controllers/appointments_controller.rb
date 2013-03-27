class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(params[:appointment])
    if @appointment.save
      respond_to do |format|
        format.html{
          redirect_to new_authentication_path :appointment => @appointment #render to show action/page
          flash.now[:success] = "Appointment created!"
        }
      end
    else
      render :new, :flash => {:error => "Very bad"}
    end
  end

end
