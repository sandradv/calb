class TasksController < ApplicationController

    def create
        if params[:task_name].length > 0 
            List.find(task_params[:list_id]).tasks.create(name: task_params[:task_name])
        end
        redirect_to "/lists/#{task_params[:list_id]}"
    end

    def delete
        task = Task.find(task_params[:task_id])
        list_id = task.list_id
        task.delete
        redirect_to "/lists/#{list_id}"
    end

    def toggle
        task = Task.find(task_params[:task_id])
        task.complete = task.complete == true ? false : true
        task.save
        redirect_to "/lists/#{task.list_id}"
    end

    private

    def task_params
        params.permit(:task_name, :list_id, :task_id)
    end
end