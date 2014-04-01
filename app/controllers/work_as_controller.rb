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


  def show
    @works = WorkAs.find(params[:id])
  end


  def new
    @works = WorkAs.new
  end


  def create
    @works = WorkAs.new(works_params)
    @works.laird_id = current_user.id
      if @works.save
        redirect_to(root_path, notice: 'Вакансію було додано.')
      else
        render action: 'new'
      end
  end


  def edit
    if current_user
      @works = WorkAs.find(params[:id])
    else
      redirect_to root_path
    end
  end


  def update
    @works = WorkAs.find(params[:id])

    if @works.update(works_params)
      redirect_to(work_as_path, notice: 'Вакансія була відредагована.')
    else
      render 'edit'
    end
  end


  private

  def works_params
    params.require(:work_as).permit(:name, :category_id, :old, :price, :describe, :status, :laird_id)
  end

end
