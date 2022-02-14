class MerchantsController < ApplicationController
  def index 
    @merchants = EngineFacade.merchants
  end

  def show 
    # require 'pry'; binding.pry
    @merchant_items = EngineFacade.merchant_items(params[:id])
  end
end