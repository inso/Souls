class LairdsController < ApplicationController
def index
  
  	if params[:category]
  		@lairds = Laird.where(category_id: params[:category] )
  	else
  		@lairds = Laird.all
  	end	
  end

  def lairds
  end

  def show
  	@lairds = Laird.find(params[:id])
  end
end
