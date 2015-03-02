class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  layout "goods"

  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new

    @categories = Category.all.map{|c| [c.name, c.id]}
  end

  def create
    @item = Item.new(item_params)
    @categories = Category.all.map{|c| [c.name, c.id]}

    @item.category_id = params[:category_id]
      if @item.save
        redirect_to @item
      else
        render 'new'
      end

    # if @item.save
    #   redirect_to @item
    # else
    #   render 'new'
    # end
  end

  def edit
    @item = Item.find(params[:id])
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def update
    @item = Item.find(params[:id])
    @item.category_id = params[:category_id]

    if @item.update(params[:item].permit(:title, :body))
      redirect_to @item
    else
      render 'edit'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:title, :body)
  end
end
