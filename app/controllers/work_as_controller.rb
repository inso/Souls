class WorkAsController < ApplicationController
def index
  
  	@works =  if params[:category]
  		WorkAs.where(category_id: params[:category], laird_id: params[:laird] )

  	else
  		WorkAs.all
  	end	
  end

  def work_as
  end

  def show
  	@works = WorkAs.find(params[:id])
  end

end
