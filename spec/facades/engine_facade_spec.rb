require 'rails_helper'

RSpec.describe EngineFacade do
  let(:merchants) {EngineFacade.merchants}
  let(:merch_items) {EngineFacade.merchant_items(1)}

  it 'creates a list of merchant item poros', :vcr do 
    expect(merch_items.sample).to be_a(Item)
  end

  it 'creates a list of merchant poros', :vcr do 
    expect(merchants.sample).to be_a(Merchant)
  end
end