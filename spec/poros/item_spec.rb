require 'rails_helper'

RSpec.describe Item do
  let(:item) {EngineFacade.merchant_items(1).sample}

  it 'attributes' do 
    expect(item.name).to be_a(String)
    expect(item.description).to be_a(String)
    expect(item.unit_price).to be_a(Float)
    expect(item.merchant_id).to be_a(Integer)
  end
end