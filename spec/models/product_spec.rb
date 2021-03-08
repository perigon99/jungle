require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'Validations presence of' do
    before do @i_dont_know_hot_to_reuse_cat = Category.new(:name => 'super_secret') end
    it 'all' do 
      
      @test1 = Product.create(
           :name => 'test1', 
           :description => "test1",
           :category =>  @i_dont_know_hot_to_reuse_cat,
           :quantity => 3,
           :price => 22
        )
        expect(@test1.errors.full_messages).to be_empty   
    end

    it 'name' do
      @new_product = Product.create(
       :description => "test2",
       :category_id => @i_dont_know_hot_to_reuse_cat,
       :quantity => 3,
       :price => 22)
        
       @new_product.save
       expect(@new_product [:name]).to be_nil
       expect(@new_product.errors.full_messages).not_to be_empty
    end

    it 'price' do
      @new_product = Product.create(
       :name => 'test1',
       :description => "test2",
       :category_id => @i_dont_know_hot_to_reuse_cat,
       :quantity => 3,
       )
       @new_product.save
       expect(@new_product [:price]).to be_nil
       expect(@new_product.errors.full_messages).not_to be_empty
    end

    it 'quantity' do
      @new_product = Product.create(
       :name => 'test1',
       :description => "test2",
       :category_id => @i_dont_know_hot_to_reuse_cat,
       :price => 22
       )
       @new_product.save
       expect(@new_product [:quantity]).to be_nil
       expect(@new_product.errors.full_messages).not_to be_empty
    end
    it 'category' do
      @new_product = Product.create(
       :name => 'test1',
       :description => "test2",
       :quantity => 3,
       :price => 22
       )
       @new_product.save
       expect(@new_product [:category]).to be_nil
       expect(@new_product.errors.full_messages).not_to be_empty
    end

  end
end
