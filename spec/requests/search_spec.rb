require File.dirname(__FILE__) + '/../spec_helper'

describe "The Login Page", :js => true do
	include TestDSL

  it "loads" do
    visit('/')
    fill_in 'user_email', with: 'admin@app.com'
		fill_in 'user_password', with: 'vfi@x'
		find('input[name="commit"]').click
		expect(page).to have_content('Signed in successfully.')
  end
end
