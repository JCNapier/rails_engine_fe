require 'rails_helper'

RSpec.describe 'merchant items index page' do
  it 'can list items that belong to a merchant' do 
    item = EngineFacade.merchant_items(1).sample

    visit merchant_path(1) 

    expect(page).to have_content(item.name)
  end

  # it 'can click an item name and be taken to its show page' do 
  #   item = EngineFacade.merchant_items(1).sample

  #   # visit "/merchants/1" 
  #   visit merchant_path(1)

  #   click_link (item.name)

  #   expect(current_path).to eq(item_path(item.id))
  # end
end