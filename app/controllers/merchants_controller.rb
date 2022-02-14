class MerchantsController < ApplicationController 
  def show 
    @items = EngineFacade.merchant_items(params[:id])
  end
end