class TasksController < ApplicationController
    def index
      @tasks = ['Task 1', 'Task 2', 'Task 3']
    end
  
    def new
    end
  
    def create
        binding.pry
        task = Task.new({
          title: params[:title],
          description: params[:description]
        })
        binding.pry
        task.save
        binding.pry
        redirect_to '/tasks'
      end
  end