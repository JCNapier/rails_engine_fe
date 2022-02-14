class EngineService 
  def self.conn 
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end

  def self.merchants
    response = conn.get("merchants")

    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.merchant_items(merchant_id)
    response = conn.get("merchants/#{merchant_id}/items")
    
    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end