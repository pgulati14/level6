# users_controller.rb
class UsersController < ApplicationController
  def index
    render plain: User.order(:name).map {|user| user.to_pleasant_string}.join("\n")
  end
end
