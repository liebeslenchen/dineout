module IntegrationTestHelper
	def sign_in(user)
		click_link 'Anmelden'
		fill_in "user_username", with: user.username
		fill_in "user_password", with: user.password
		click_button 'Anmelden'
	end
end