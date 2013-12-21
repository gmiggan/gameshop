class SessionsController < ApplicationController
  def new
  end

  def create
  customer = Customer.find_by_email(params[:email])	
   if customer && customer.authenticate(params[:password]) 			
   session[:customer_id] = customer.id	#stores the id in the session 
   session[:customer_name] = customer.name
   redirect_to customer	#displays the user/show view
   else  	 		
	flash.now[:error] = "Invalid email/password combination."      	
	render 'new'		 #shows the signin page again 
    end
 end


  

  def destroy
  if signed_in?
		session[:customer_id] = nil					
		else
		flash[:notice] = "You need to sign in first"
		end
	redirect_to signin_path
 end

end
