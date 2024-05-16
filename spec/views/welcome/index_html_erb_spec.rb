require 'rails_helper'
require 'json/ext'

RSpec.describe 'Welcome Page', type: :feature do
  before do
    visit welcome_path
  end
  describe 'Welcome Page' do
    it 'displays the title of the app' do
      expect(page).to have_content('BudgetApp')
    end
    it 'displays the log in button' do
      expect(page).to have_content('LOG IN')
    end
    it 'displays the sign up button' do
      expect(page).to have_content('SIGN UP')
    end
  end
end
