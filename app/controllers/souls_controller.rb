class SoulsController < ApplicationController

  def index
    if params[:sort].present?
      column=params[:sort].split('_').first
      order=params[:sort].split('_').last.upcase
    else
      column='name'
      order='ASC'
    end 
  	
    @souls = if params[:category].present?
  		Soul.where(category_id: params[:category]).order("#{column} #{order}").paginate(:page => params[:page], :per_page => 12)
  	else
  		Soul.all.order("#{column} #{order}").paginate(:page => params[:page], :per_page =>12)
  	end	
  end

  def souls
  end

  def show
  	@souls = Soul.find(params[:id])
  end

end
