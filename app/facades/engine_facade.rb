class EngineFacade
  def self.merchant_items(merchant_id)
    json = EngineService.merchant_items(merchant_id)

    json.map do |data| 
      Item.new(data)
    end
  end
end