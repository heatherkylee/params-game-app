class Api::GamesController < ApplicationController
  def get_name
    # if params["name"][0].upcase == "A"
    if params["name"][0] == "A" || params["name"][0] == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = params["name"].upcase
    end
    render "name_view.json.jbuilder"
  end
end
