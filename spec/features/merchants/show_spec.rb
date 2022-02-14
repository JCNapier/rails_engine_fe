require 'rails_helper'

RSpec.describe 'merchant items index page' do
  let(:item) {EngineFacade.merchant_items(1).sample}
  it 'can list items that belong to a merchant', :vcr do 

    visit merchant_path(1) 

    expect(page).to have_content(item.name)
  end

  it 'can click an item name and be taken to its show page', :vcr do 
 
    visit merchant_path(1)

    click_link (item.name)

    expect(current_path).to eq(item_path(item.id))
  end
end