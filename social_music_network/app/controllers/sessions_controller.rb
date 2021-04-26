require 'pry'
class SessionsController < UsersController
  def new
  end
    
  def create
    @user = User.find_by(email_address: params[:email_address])
    binding.pry
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      redirect_to '/login'
    end
  end
    
      def login
          @user = User.find_by_email(params[:email_address])
          if @user.password == params[:password]
            give_token
          else
            redirect_to home_url
          end
        
      end
    
      def welcome
      end
      
      def logout
        session.delete :email
      end

      def destroy
        session.delete :email_address
      end

    
      private
      
      def auth
        request.env['omniauth.auth']
      end
end
