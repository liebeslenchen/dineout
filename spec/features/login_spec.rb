require 'spec_helper'

describe 'Sign up' do
	before(:each) do
		visit root_path
	end

	it 'allows to sign up' do
		click_link 'Sign up'
		fill_in "user_email", with: 'dineout@gmail.com'
		fill_in "user_password", with: 'hackme'
		fill_in "user_password_confirmation", with: 'hackme'

		expect { click_button 'Sign up' }.to change { User.count }.by(1)

		page.should have_content 'Welcome, dineout@gmail.com'
		end 
end

