class ListsController < ApplicationController
    def index
        @lists = List.all
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

end