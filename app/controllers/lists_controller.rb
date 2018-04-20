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

    def create
        list = current_user.lists.create(name: list_params[:list_name])
        redirect_to "/lists/#{list.id}"
    end

    def delete
    end

    def update
    end

    private 

    def list_params
        params.permit(:list_id, :list_name)
    end

    def verify_user
        return unless list_params[:list_id]
        user_authorized = List.find(list_params[:list_id]).user_id == current_user.id
        redirect_to lists_path unless user_authorized
    end
end