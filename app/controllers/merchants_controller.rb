class MerchantsController < ApplicationController
  def index 
    @merchants = EngineFacade.merchants
  end

  def show 
    @merchant = EngineFacade.merchants.find { |m| m.id == (params[:id]) }
    @merchant_items = EngineFacade.merchant_items(params[:id])
  end
end