class LoginRequest
	private
		@clientId = ""
		@username = ""
		@password = ""
		@grant_type = "password"
		@scope = "openid"

		def initialize(clientId, username, password)
			if(clientId == "") then 
				raise "Client ID must be set for login request."
			end
			if(username == "") then
				raise "Username required"
			end
			if(password == "") then
				raise "Password required"
			end
			@clientId = clientId
			@username = username
			@password = password
		end

		def to_json
			return %{
				{
					%{"clientId"} : %{@clientId},
					%{"username"} : %{@username},
					%{"password"} : %{@password},
					%{"grant_type"} : %{@grant_type}
					%{"scope"} : %{@scope}
				}
			}
		end
end