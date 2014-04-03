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

  def update
    @soul = Soul.find(params[:id])

    if @soul.update(soul_params)
      redirect_to @soul
    else
      render 'edit'
    end
  end

  def edit
    if current_user
      @soul = Soul.find(params[:id])
    else
      redirect_to root_path
    end
  end

  private

  def soul_params
    params.require(:soul).permit(:name, :second_name, :pname, :old, :price, :image, :phone, :describe, :status)
  end

end
