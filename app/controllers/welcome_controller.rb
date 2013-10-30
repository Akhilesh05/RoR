class WelcomeController < ApplicationController
  def index
    @welcome = "Welcome RoR"
    render text: @welcome
  end
end
