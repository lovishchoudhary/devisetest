class RegistrationsController < Devise::RegistrationsController

def create
  @user = User.create(user_params)
  respond_to do |format|
    format.html {
      @user.save ? (render @user) : (render 'layouts/application')
    }

    format.json {
      @user.save ? (render :json => {:state => {:code => 0}, :data => @user }) :
                   (render :json => {:state => {:code => 1, :messages => @user.errors.full_messages} })
    }
  end
end

private

  def user_params
     params.require(:user).permit(:email, :password)
  end
end 
