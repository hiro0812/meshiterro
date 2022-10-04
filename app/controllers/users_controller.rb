class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])  # データ（レコード）を1件取得
    @user.update(user_params) # データ（レコード）を更新
    redirect_to user_path # 詳細一覧画面へリダイレクト
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
