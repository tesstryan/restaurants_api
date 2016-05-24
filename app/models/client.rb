class Client < ActiveRecord::Base

  before_create :generate_access_token

  validates :company, presence: true


  private

  def generate_access_token
    begin
       self.access_token = SecureRandom.hex(16)
     end while self.class.exists?(access_token: access_token)
  end
end
