class AuthenticationTokenService
  HMAC_SECRET = "mysecret"
  ALGORITHM_TYPE = 'HS256'

  def self.encode(id)
    payload={user_id: id}
    JWT.encode(payload, HMAC_SECRET, ALGORITHM_TYPE)
  end

  def self.decode(token)
    decoded = JWT.decode token, HMAC_SECRET, true, { algorithm: ALGORITHM_TYPE }
    HashWithIndifferentAccess.new decoded[0]
  end
end