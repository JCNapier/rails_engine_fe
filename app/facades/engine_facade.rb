class EngineFacade
  def self.merchants 
    json = EngineService.merchants 

    json.map do |data|
      Merchant.new(data) 
    end
  end

  def self.merchant_items(merchant_id)
    json = EngineService.merchant_items(merchant_id)

    json.map do |data| 
      Item.new(data)
    end
  end
end