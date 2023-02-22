require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @user = User.create(email: "guy@gmail.com", name: 'asd', password: "111111", password_confirmation: "111111" )
    @category = Category.create(user_id: @user.id, name: 'Category 1')
  end

  it 'name should be present' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'icon should be nil' do
    @category.icon = nil
    expect(@category).to be_valid
  end

  it 'should have a valid user' do
    expect(@category.user).to eq(@user)
  end

  it 'should belong to a user' do
    expect(@user.categories).to include(@category)
  end
end
