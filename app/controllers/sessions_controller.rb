class SessionsController < ApplicationController
  
  #raise sessions[:user_id].inspect
  
  def new
  end
  
  def create
    #user = User.find_by(accountname: params[:session][:user_name].downcase).first
    usr = User.authenticate(params[:session])
    if usr #&& user.authenticate(params[:session][:password])
      log_in usr 
      #raise usr.inspect
      redirect_to '/'
    else
      flash.now[:notice] = "Invalid username/password combination"
      render 'new'
    end
        
   
    
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
  private
  
  # def user_params
    # user = []
    # user.user_name = params[:session][:user_name].downcase
    # user.password = params[:session][:password]
    # return user
  # end
end
