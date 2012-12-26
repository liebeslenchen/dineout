require 'spec_helper'

describe 'Login' do
	before(:each) do
		visit root_path
	end

	it 'allows to sign up' do
		click_link 'Registrieren'
		fill_in "user_email", with: 'dineout@gmail.com'
		fill_in "user_password", with: 'hackme'
		fill_in "user_password_confirmation", with: 'hackme'

		expect { click_button 'Sign up' }.to change { User.count }.by(1)

		page.should have_content 'Wilkommen, dineout@gmail.com'
	end

	context 'existing user' do
		let!(:user) { FactoryGirl.create :user }

		it 'allows to sign in' do
			click_link 'Einloggen'
			fill_in "user_email", with: user.email
			fill_in "user_password", with: 'hackme'
			click_button 'Sign in'

			page.should have_content "Wilkommen, #{user.email}"
		end

		it 'allows to sign out' do
			click_link 'Einloggen'
			fill_in "user_email", with: user.email
			fill_in "user_password", with: 'hackme'
			click_button 'Sign in'
			page.should have_content "Wilkommen, #{user.email}"

			click_link "Ausloggen"
			page.should have_content 'Einloggen'
		end
	end
end

