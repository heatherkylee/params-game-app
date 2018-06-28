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
  
  def guess_number #query parameters
    guess = params["guess"].to_i
    answer = 36

    if guess == answer
      @message = "Good Job"
    elsif guess < answer
      @message = "guess higher"
    else
      @message = "guess lower"
    end
    render "number_view.json.jbuilder"
    end

  def guess_a_number
    guess = params["guess"].to_i
    answer = 36

    if guess == answer
      @message = "Good Job"
    elsif guess < answer
      @message = "guess higher"
    else
      @message = "guess lower"
    end
    render "segment_parameter_view.json.jbuilder"
  end
 end
