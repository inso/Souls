class WorkAsController < ApplicationController

def index
    if params[:sort].present?
      column=params[:sort].split('_').first
      order=params[:sort].split('_').last.upcase
    else
      column='name'
      order='ASC'
    end 
  	
    @works =  if params[:category].present?
  		WorkAs.where(category_id: params[:category]).order("#{column} #{order}").paginate(:page => params[:page], :per_page => 12)
  	else
  		WorkAs.all.paginate(:page => params[:page], :per_page =>12)
    end
  end  
  def work_as
  end

  def show
  	@works = WorkAs.find(params[:id])
  end

end
