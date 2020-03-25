class User < ActiveRecord::Base
  has_secure_password
  
  after_initialize :init

  def init
    self.number  ||= 0.0           #will set the default value only if it's nil
    self.address ||= build_address #let's you set a default association
  end
end
