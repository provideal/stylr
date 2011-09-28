class Stylr::Docs::ApplicationController < ApplicationController

  layout 'stylr/docs'

  def index
    @user = User.new
    @user.valid?
  end

end
