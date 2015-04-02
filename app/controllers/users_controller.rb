class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Вы успешно зарегистрировались в системе подачи заявок"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Профиль обновлён"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    can_destroy = false
    if current_user?(user)
      if current_user.admin?
        flash[:error] = "Администратор не может удалить сам себя. Для этого нужен другой администратор"
      else
        can_destroy = true
      end
    elsif current_user.admin?
      can_destroy = true
    else
      flash[:error] = "У Вас нет разрешений на удаление пользователей"
    end
    if can_destroy
      user.destroy
      flash[:success] = "Пользователь удалён"
    end
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
