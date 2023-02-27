class Admins::ItemsController < Admins::ApplicationController
  def new
    @item = current_admin.items.build
  end
  
  def create
    @item = current_admin.items.build(item_params)
      if @item.save
          flash[:success] = "Itemが正常に作成されました"
          redirect_to root_path
      else
          flash.now[:danger] = "Itemが正常に再生されませんでした"
          render :new
      end
  end
  
  private
  
  def item_params
      params.require(:item).permit(:item, :text, :price, :image)
  end
end
