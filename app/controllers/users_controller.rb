class UsersController < ApplicationController
  # This is where the routes go

  def index
    users = User.select("id", "username", "email").all().order("id")
    render({json: users.as_json()})
  end

end