require 'pry'
class SessionsController < UsersController
    def new
      end
    
      def create
        if auth #facebook login
            @user.find_or_create_by(email: auth["info"]["email"]) do |u|
              u.full_name = auth["info"]["name"]
              # Secure Random generates a secrue 10 digit hexadecimal string that will be encrypted by bcrypt
              u.password = SecureRandom.hex(10)
            end
            if @user.save
              sessions[:user_id] = @user.id
              redirect_to @user 
            else
            redirect_to root_path
            end
        else 
          @user = User.find_by(email_address: params[:email_address])
          if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
          else
            redirect_to '/login'
          end
        end
      end
    
      def login
        binding.pry
        @user = User.find(params[:id])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      end
    
      def welcome
      end
      
      def logout
        session.delete :email
      end
    
      private
      
      def auth
        request.env['omniauth.auth']
      end
end
