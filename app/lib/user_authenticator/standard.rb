class UserAuthenticator::Standard < UserAuthenticator
  class AuthenticationError < StandardError;
  end

  attr_accessor :user, :access_token

  def initialize(login, password)

  end

  def perform
    raise AuthenticationError
  end
end
