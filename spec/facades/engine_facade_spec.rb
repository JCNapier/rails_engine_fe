require 'rails_helper'

RSpec.describe EngineFacade do
  let(:merch_items) {EngineFacade.merchant_items(1)}

  it 'creates a list of merchant item poros' do 
    expect(merch_items.sample).to be_a(Item)
  end
end