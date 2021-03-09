require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end
  scenario "Click on a product to see detail page" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
    save_screenshot('test2.png')
    click_link('Details', match: :first)
    # click_on "Details", :first
    sleep(1)
    save_screenshot('test2b.png')
    page.has_content?('.product-detail')
  end

end
