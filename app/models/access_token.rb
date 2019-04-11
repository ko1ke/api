class AccessToken < ApplicationRecord
  belongs_to :user
  after_initialize :generate_token

  private

  def generate_token
    loop do
      break if token.present? && AccessToken.exists?(token: token)

      self.token = SecureRandom.hex(10)

      # FIXME: added by myself, teacher haven't not added
      # not including 'save', infinity loop occurs
      save
    end
  end
end
