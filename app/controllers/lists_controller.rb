class ListsController < ApplicationController
 
 def index
   @lists = List.all
 end

 def new
   @list = List.new
 end

 def show
   @list = List.find(params[:id])
 end

 def create
   @list = List.new(strong_params)
    if @list.save
    redirect_to @list, notice: 'added to list'
    else
      render :new
    end
 end
private 

def strong_params
params.require(:list).permit(:name)
end
end