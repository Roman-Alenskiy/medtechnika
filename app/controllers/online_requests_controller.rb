class OnlineRequestsController < ApplicationController
    before_action :authenticate_admin!, only: [ :show, :destroy, :completed, :uncompleted ]
    before_action :get_categories

    layout "control_panels", only: [ :show ]

    def show
        @requests_not_completed = OnlineRequest.where(completed: false)
        @request = OnlineRequest.find(params[:id])
    end
    
    def new 
        @request = OnlineRequest.new
    end

    def create
        @request = OnlineRequest.new(request_params)
        if @request.save
            flash[:success] = "Заявка успешно отправлена! Наш менеджер свяжется с Вами в ближайшее рабочее время."
            redirect_to new_online_request_path
        else
            flash.now[:danger] = "Неккоректное заполнение полей!"
            render 'online_requests/new'
        end
    end

    def destroy 
        OnlineRequest.find(params[:id]).destroy
        flash[:success] = "Заявка успешно удалена!"
        redirect_to manager_requests_path
    end

    def completed
        @request = OnlineRequest.find(params[:id])
        @request.update_attribute(:completed, true)
        flash[:success] = "Заявка успешно помечена как завершенная!"
        redirect_to manager_requests_path
    end

    def uncompleted
        @request = OnlineRequest.find(params[:id])
        @request.update_attribute(:completed, false)
        flash[:success] = "Заявка успешно помечена как активная!"
        redirect_to manager_requests_path
    end

    private 

        def request_params
            params.require(:online_request).permit(:customer_name, :customer_email, :customer_phone_number, :subject, :message)
        end

end
