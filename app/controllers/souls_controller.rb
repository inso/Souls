class SoulsController < ApplicationController

  def index
  
  	@souls = if params[:category]
  		Soul.where(category_id: params[:category] )
  	else
  		Soul.all
  	end	
  end

  def souls
  end

  def show
  	@souls = Soul.find(params[:id])
  end

end
