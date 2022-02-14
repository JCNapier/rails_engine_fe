require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'lists all merchants' do 
    merchant = EngineFacade.merchants.sample

    visit merchants_path 

    expect(page).to have_content(merchant.name)
  end
end