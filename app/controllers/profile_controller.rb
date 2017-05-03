class ProfileController < ApplicationController
  def index
  @user=current_user
<<<<<<< HEAD
=======
  @houses = House.all
>>>>>>> 206447ac93d9b7328bcde95844d7bc44c281cfd7
  end

  def edit
  end

  def show
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'success'
    else
      render :index
    end
  end

  private

  def profile_params
    params.fetch(:profile).permit(:avatar,:name,:email,:telephone)
  end
end
