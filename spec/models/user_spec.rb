require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations presence of' do
   
    it 'user golden path' do 
      
      @test1 = User.create(
        :name => 'test', 
        :email => 'bob@bob.bob', 
        :password => '123456', 
        :password_confirmation => '123456'
        )
        @test1.save
        expect(@test1.errors.full_messages).to be_empty   
    end

    it 'username' do  
      @test1 = User.create(   
        :email => 'bob@bob.bob', 
        :password => '123456', 
        :password_confirmation => '123456'
        )
        @test1.save
        expect(@test1.errors.full_messages).not_to be_empty   
    end

    it 'password match' do  
      @test1 = User.create(   
        :name => 'test',
        :email => 'bob@bob.bob', 
        :password => '123456', 
        :password_confirmation => '6546546'
        )
        @test1.save
        expect(@test1.errors.full_messages).not_to be_empty   
    end

    it 'has password' do  
      @test1 = User.create(   
        :name => 'test',
        :email => 'bob@bob.bob', 
    
        )
        @test1.save
        expect(@test1.errors.full_messages).not_to be_empty   
    end

    it 'email already exist' do  
      @test1 = User.create(   
        :name => 'test',
        :email => 'bob@bob.bob', 
        :password => '123456', 
        :password_confirmation => '123456'
        )
        @test2 = User.create(   
          :name => 'test2',
          :email => 'bob@bob.bob', 
          :password => '123456', 
          :password_confirmation => '123456'
          )
          @test1.save
          @test2.save
        expect(@test2.errors.full_messages).not_to be_empty   
    end
    it 'has length min of 6' do  
      @test1 = User.create(   
        :name => 'test',
        :email => 'bob@bob.bob', 
        :password => '12', 
        :password_confirmation => '12'
        )
        @test1.save
        expect(@test1.errors.full_messages).not_to be_empty   
    end
  end
end
