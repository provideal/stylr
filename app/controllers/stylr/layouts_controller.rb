class Stylr::LayoutsController < ApplicationController

  layout :set_layout

  def layout1
  end

  private

  def set_layout
    "stylr/#{action_name}"
  end

end
