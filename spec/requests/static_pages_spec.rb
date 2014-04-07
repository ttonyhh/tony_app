require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    before do
      visit '/static_pages/home'
    end

    it "should have the content 'Assistant Cupid' " do
    	expect(page).to have_content('Assistant Cupid')
    end

    it "should have button to Sign up" do
      #(page).to have_link('Sign Up')
    end
  end

  describe "Help page" do
    before do
      visit '/static_pages/help'
    end

    it "should have content 'Help'" do
      expect(page).to have_title('Help')
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    before do 
      visit '/static_pages/about'
    end

    it "should have content 'About'" do
      expect(page).to have_title('About')
      expect(page).to have_content('About')
    end
  end
end
