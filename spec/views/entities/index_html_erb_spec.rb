require 'rails_helper'

RSpec.describe 'Categories Page', type: :feature do
  before(:each) do
    @user = User.create(name: 'test', email: 'tesfffft@example.com', password: 'password',
                        password_confirmation: 'password')
    @user.confirm
    @category = Category.create(name: 'CategoryColor', user_id: @user.id)
    @entity = Entity.create(name: 'Entity 1', amount: 12, user_id: @user.id, category_id: @category.id)
    visit welcome_path
    click_on 'LOG IN'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_on 'Log in'
    visit category_entities_path(category_id: @category.id)
  end

  describe 'Welcome Page' do
    it 'displays the title of the app' do
      expect(page).to have_content('Create a new Transaction')
    end

    it 'displays the form of creating a new category' do
      click_on 'Create a new Transaction'
      expect(page).to have_content('Transaction name:')
      expect(page).to have_content('Amount:')
    end

    it 'displays the form of creating a new category' do
      click_on 'Create a new Transaction'
      expect(page).to have_content('Amount:')
    end

    it 'displays the form of creating a new category' do
      click_on 'Create a new Transaction'
      expect(page).to have_content('Categories:')
    end
    it 'displays the form of creating a new category' do
      click_on 'Create a new Transaction'
      expect(page).to have_button('Create Transaction')
    end
  end
end
