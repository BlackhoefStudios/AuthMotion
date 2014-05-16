class Auth0Client

	def initialize(domain, clientId)
		@domain = domain
		@webHandler = AuthWebHandler.new(@domain, clientId)
	end

	def login(username, password)
		@webHandler.login(username, password)
	end


end