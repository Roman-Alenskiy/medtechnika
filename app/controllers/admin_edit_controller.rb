class AdminEditController < ApplicationController

    before_action :authenticate_admin!

    layout "admins"
    
    def edit
        @admin = current_admin
    end

    def update
        @admin = current_admin
        # remove password parameters if blank
        if params[:admin]['password'].blank? && params[:admin]['confirmation'].blank?
            params[:admin].delete('password')
            params[:admin].delete('password_confirmation')
        end
        if @admin.update_attributes(admin_params)
          flash[:success] = "Данные профиля успешно изменены!"
          bypass_sign_in(@admin)
          redirect_to manager_path
        else
          flash.now[:danger] = "Неккоректное заполнение полей!"
          render 'admin_edit/edit'
        end
    end

    private 

        def admin_params
        params.require(:admin).permit(:username, :email, :password, :password_confirmation)
        end

end