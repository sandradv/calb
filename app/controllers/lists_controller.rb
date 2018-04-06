class ListsController < ApplicationController
    before_action :verify_user

    def index
        @lists = current_user.lists.all
    end

    def show
        id = list_params[:list_id]
        @list = List.find(id)
    end
    
    def new
    end

    private 

    def list_params
        params.permit(:list_id)
    end

    def verify_user
        return unless list_params[:list_id]
        user_authorized = List.find(list_params[:list_id]).user_id == current_user.id
        redirect_to lists_path
    end
end