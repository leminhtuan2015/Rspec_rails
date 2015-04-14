class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def getx
    1
  end
end
