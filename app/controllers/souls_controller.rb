class SoulsController < ApplicationController

  def index
    
  	if params[:category]
  		@souls = Soul.where(category_id: params[:category] )
  	else
  		@souls = Soul.all
  	end	
  end

  def souls
  end

  def show
  	@souls = Soul.find(params[:id])
  end

end
