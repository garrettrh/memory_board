class MemoriesController < ApplicationController
  before_action :set_memory, only: [:show, :edit, :update, :destroy]

  def index
    @memories = Memory.all
    
  end

  def show
    
  end

  def new
    @memory = Memory.new
    
  end

  def create
    @memory = Memory.new(memory_params)

    # saving the user when creating, two ways
    # use this with default
    @memory.user = current_user
    # or the long way
    # @memory = current_user.memories.new(memory_params)

    if @memory.save
      redirect_to memories_path
    else
      render :new
    end

  end

  def edit

  end

  def update
    @memory.update(memory_params)
    
  end

  def destroy
    @memory.destroy
    
  end

  private
    def set_memory
      @memory = Memory.find(params[:id])
    end

    def memory_params
      params.require(:memory).permit(:title, :content)
    end
  

end
