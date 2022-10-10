class User < ApplicationRecord
	before_create do
		self.user_id = Base64.encode64(UUIDTools::UUID.random_create)[0..20]
	end
end
