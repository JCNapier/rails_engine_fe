require 'rails_helper'

RSpec.describe EngineService do
  let(:merchants) {EngineService.merchants}
  let(:merchant_items) {EngineService.merchant_items(1)}

  it 'establishes a connection for merchants', :vcr do 
    expect(merchants).to be_an(Array)
    expect(merchants.first[:attributes][:name]).to be_a(String)
  end

  it 'establishes a connection for merchant items', :vcr do 
    expect(merchant_items).to be_a(Array)
    expect(merchant_items.first[:attributes][:name]).to be_a(String)
    expect(merchant_items.first[:attributes][:description]).to be_a(String)
    expect(merchant_items.first[:attributes][:unit_price]).to be_a(Float)
    expect(merchant_items.first[:attributes][:merchant_id]).to be_a(Integer)
  end
end