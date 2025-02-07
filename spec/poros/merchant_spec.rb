require 'rails_helper'

RSpec.describe Merchant do
  let(:merchant) {EngineFacade.merchants.sample}

  it 'creates a merchant object', :vcr do 
    expect(merchant.id).to be_a(String)
    expect(merchant.name).to be_a(String)
  end
end