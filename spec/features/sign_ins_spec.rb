require 'rails_helper'

RSpec.feature "SignIns", type: :feature do
  describe 'sign-in' do
  	before(:each) do
  		User.create(name: "kevin", email: "kevin@example.com", password: "password")
  	end


  	it 'signs me in and redirects to recipes index page' do
  		visit '/sign_in'
  		within ("#bla") do
  			find('#session_email').set('kevin@example.com')
  			find('#session_password').set('password')
      		
  		end
  		within('.submit-field') do
		  click_button 'Sign In'
		end
  		expect(page).to have_content "All of your recipes"
  	end

  end
end
