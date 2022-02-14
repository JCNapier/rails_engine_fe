require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'lists all merchants' do 
    merchant = EngineFacade.merchants.sample

    visit merchants_path 

    expect(page).to have_content(merchant.name)
  end

  it 'can click each merchants name and be taken to their show page' do 
    merchant = EngineFacade.merchants.first

    visit merchants_path

    click_link merchant.name 

    expect(current_path).to eq(merchant_path(merchant.id))
  end
end