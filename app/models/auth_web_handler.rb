class AuthWebHandler
	@auth_type = "Username-Password-Authentication"
	@content_type = "application/json"

	def initialize(domain,clientId)
		@clientId = clientId
		@domain = domain
	end
	def login(username, password)
		request = LoginRequest.new(@clientId, username, password)
		json = request.to_json
		#do request here...
		#TODO: investigate http://rubymotion-tutorial.com/10-api-driven-example/
	end
end