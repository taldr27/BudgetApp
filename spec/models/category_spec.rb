require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @user = User.create(name: 'Tom', email: 'tom@yopmail.com', password: 'password')
    @category = Category.create(user_id: 1, name: 'Category 1')
  end

  it 'name should be present' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'icon should be nil' do
    @category.icon = nil
    expect(@category).to_not be_valid
  end

  it 'should have a valid user' do
    expect(@category.user).to eq(@user)
  end

  # it 'should belong to a user' do
  #   expect(@user.categories).to include(@category)
  # end
end
