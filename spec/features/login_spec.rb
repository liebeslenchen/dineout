require 'spec_helper'

describe 'Login' do
	before(:each) do
		visit root_path
	end

	it 'allows to sign up' do
		first(:link, 'Registrieren').click 
		fill_in "user_username", with: 'Test'
		fill_in "user_email", with: 'test@dineout.com'
		fill_in "user_password", with: 'hackme'
		fill_in "user_password_confirmation", with: 'hackme'

		expect { click_button 'Registrieren' }.to change { User.count }.by(1)

		page.should have_content 'Test'
	end

	context 'existing user' do
		let!(:user) { FactoryGirl.create :user }

		before(:each) do
			sign_in user
		end

		it 'allows to sign in' do
			page.should have_content user.username
		end

		it 'allows to sign out' do
			page.should have_content user.username

			click_link "Abmelden"
			page.should have_content 'Anmelden'
		end

		it 'allows to change account' do
			page.should have_content user.username
			click_link user.username
			fill_in "user_username", with: 'NeuerUserName'
			fill_in "user_current_password", with: user.password
			click_button 'Update'
			page.should have_content "NeuerUserName"
		end 

	end
end

