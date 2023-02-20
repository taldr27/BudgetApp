class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]
  def welcome; end

  def redirect_signed_in_user
    redirect_to root_path if user_signed_in?
  end
end
