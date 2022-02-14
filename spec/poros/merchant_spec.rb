require 'rails_helper'

RSpec.describe Merchant do
  let(:merchant) {EngineFacade.merchants.sample}

  it 'creates a merchant object' do 
    expect(merchant.name).to be_a(String)
  end
end