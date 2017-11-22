require 'rails_helper'

RSpec.feature "SignIns", type: :feature do
  describe 'sign-in' do
  	before(:each) do
  		User.create(name: "kevin", email: "kevin@example.com", password: "password")
  	end


  	it 'signs me in and redirects to recipes index page' do
  		visit '/sign_in'
  		within ("#bla") do
  			find('email').set('kevin@example.com')
  			find('password').set('password')
      		
  		end
  		click_button 'Sign In'
  		expect(page).to have_content "All of your recipes"
  	end

  end
end
