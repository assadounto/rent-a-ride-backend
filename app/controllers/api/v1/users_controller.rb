class Api::V1::UsersController < ApiController
before_action :authorize_request, except: [:create]

  def index
      users = User.all
      render json: {
          users: users
      }
  end

  def create
      user = User.create(user_params)
      # byebug
      if user.valid?
          payload = {user_id: user.id}
          token = AuthenticationTokenService.encode(payload)
          render json: {
             signed_up: true
          }
      else
          render json: {
              errors: user.errors.full_messages
          },
          status: 401
      end
  end

  private

  def user_params
      params.permit(:username, :email, :password, :password_digest)
  end

end