class TodolistsController < ApplicationController
  def new
      @list = List.new
  end

  def create

  	list = List.new(list_params)

  	list.save

  	redirect_to '/top'
  end

  def index
      @lists = List.all
  end

  def show
      @list = List.find(params[:id])
  end

  private

  def list_params
      params.recquire(:list).permit(:totle, :body)
  end 
end
