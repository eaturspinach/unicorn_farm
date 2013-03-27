class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(params[:appointment])
    if @appointment.save
      respond_to do |format|
        format.html{
          redirect_to authentications_new_path(@appointment) #render to show action/page
          flash.now[:success] = "Appointment created!"
        }
      end
    else
      render :new, :flash => {:error => "Very bad"}
    end
  end

  def show
    # @appointment = Appointment.find params[:id]
    # if session_is_logged_in
    #   render @appointment
    # else
    #   redirect_to authentications_create_path
    # end
  end

end
