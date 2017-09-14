class UsersController < ApplicationController
  def show
  	@partners = Partner.all
  end
end
