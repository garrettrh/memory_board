class MemoriesController < ApplicationController
  before_action :set_memory, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @memories = Memory.all
    respond_with(@memories)
  end

  def show
    respond_with(@memory)
  end

  def new
    @memory = Memory.new
    respond_with(@memory)
  end

  def edit
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.save
    respond_with(@memory)
  end

  def update
    @memory.update(memory_params)
    respond_with(@memory)
  end

  def destroy
    @memory.destroy
    respond_with(@memory)
  end

  private
    def set_memory
      @memory = Memory.find(params[:id])
    end

    def memory_params
      params.require(:memory).permit(:title, :content)
    end
end
