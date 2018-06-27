class Api::GamesController < ApplicationController
  def get_name
    @message = "test"
    render "name_view.json.jbuilder"
  end
end
