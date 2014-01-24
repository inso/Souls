class LairdsController < ApplicationController
def index
  
  	@lairds = if params[:category]
  		Laird.where(category_id: params[:category] )
  	else
  		Laird.all
  	end	
  end

  def lairds
  end

  def show
  	@lairds = Laird.find(params[:id])
  end
end
