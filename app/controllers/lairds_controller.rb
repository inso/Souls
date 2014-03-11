class LairdsController < ApplicationController

  def index 
    if params[:sort].present?
      column=params[:sort].split('_').first
      order=params[:sort].split('_').last.upcase
    else
      column='name'
      order='ASC'
    end

  	@lairds = if params[:category].present?
  		Laird.where(category_id: params[:category]).order("#{column} #{order}")
  	else
  		Laird.all.order("#{column} #{order}")
    end
  end

  def lairds
  end

  def show
  	@lairds = Laird.find(params[:id])
  end

  def update
    @laird = Laird.find(params[:id])

    if @laird.update(laird_params)
      redirect_to @laird
    else
      render 'edit'
    end
  end

  def edit
    @laird = Laird.find(params[:id])
  end

  private

  def laird_params
    params.require(:laird).permit(:name, :category_id, :image, :phone, :describe, :status, :work_as_id)
  end

end
