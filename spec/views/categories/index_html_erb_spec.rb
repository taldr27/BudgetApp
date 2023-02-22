require 'rails_helper'


RSpec.describe 'Categories Page', type: :feature do
  before(:each) do
    @user = User.create(name: 'test', email: 'tesfffft@example.com', password: 'password',
                        password_confirmation: 'password')
    @user.confirm
    @category = Category.create(name: 'CategoryColor', user_id: @user.id)
    visit welcome_path
    click_on 'LOG IN'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_on 'Log in'
    visit categories_path
  end


  describe 'Welcome Page' do
    it 'displays the title of the app' do
      expect(page).to have_content('Create a new Category')
    end
    it 'displays the form of creating a new category' do
      click_on 'Create a new Category'
      expect(page).to have_content('Category name:')
      expect(page).to have_content('Upload a category image:')
    end

    it 'displays the form of creating a new category' do
      click_on 'Create a new Category'
      expect(page).to have_button("Create Category")
    end

  end
end
