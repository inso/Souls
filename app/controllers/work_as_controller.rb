class WorkAsController < ApplicationController
def index
  
  	if params[:category]
  		@works = Work_as.where(category_id: params[:category], laird_id: params[:laird] )

  	else
  		@works = Work_as.all
  	end	
  end

  def work_as
  end

  def show
  	@works = Work_as.find(params[:id])
  end

end
