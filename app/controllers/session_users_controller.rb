class SessionUsersController < ApplicationController
    protect_from_forgery
    def new
    end

    def create
        @user = login(params[:email], params[:password])
        if @user
          redirect_back_or_to login_path, success: 'ログインしました'
        else
          flash.now[:danger] = 'ログインに失敗しました'
          render :new 
        end
    end

    def destroy
        logout
        redirect_to login_path, success: 'ログアウトしました'
    end
end
