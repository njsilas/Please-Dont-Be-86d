class Order < ActiveRecord::Base
belongs_to :server
has_secure_password
end
